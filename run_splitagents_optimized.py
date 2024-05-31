
import logging
import sys
from DbexecutionCrew import DbexecutionCrew
from DataVisualizationCrew import DataVisualizationCrewSA
import streamlit as st
import json
import pandas as pd
from tools import is_csv,cleanup,is_json,generate_header_attributes_json
import np
from io import StringIO

logging.basicConfig(stream=sys.stdout, level=logging.INFO)
logging.getLogger().addHandler(logging.StreamHandler(stream=sys.stdout))

def displaychart(chartsdata,dfd,st):
    df = pd.DataFrame(json.loads(dfd))
    jchartsdata = json.loads(chartsdata)
    for jchartdata in jchartsdata:
        if not jchartdata["chart_type"] == "NO_CHARTS":
            st.subheader(jchartdata['title'])
            chardef = jchartdata["definition"]["columns"]

            #if len(chardef["y"]) == 1:
            #    _cols_=[chardef["x"],chardef["y"][0]]
            #else:
            #    _cols_=[chardef["x"],chardef["y"][0],chardef["y"][1]]
            _cols_=[chardef["x"],chardef["y"]]
            _x_ = df[_cols_[0]]
            _y_ = df[_cols_[1]]
        
            tuples = list(zip(_x_, _y_))
        
            cdf = pd.DataFrame(tuples,columns=_cols_)
            #check if the column is of type string

            #cdf[_cols_[1]] = cdf[_cols_[1]].astype(float)

            if jchartdata["chart_type"] == "Bar Chart":
                cdf = cdf.sort_values(by=_cols_[1],kind='mergesort',ascending=False)
                st.bar_chart(cdf,x=_cols_[0],y=_cols_[1])
            if jchartdata["chart_type"] == "Line Chart":
                st.line_chart(cdf,x=_cols_[0],y=_cols_[1])         
            if jchartdata["chart_type"] == "Scatter Chart":
                st.scatter_chart(cdf,x=_cols_[0],y=_cols_[1])    
            if jchartdata["chart_type"] == "Area Chart":
                st.area_chart(cdf,x=_cols_[0],y=_cols_[1])    
            if jchartdata["chart_type"] == "Map":
                st.map(cdf,x=_cols_[0],y=_cols_[1]) 
        else:
            st.markdown("Unexpected chart data")

st.header("Agent Powered Information Bot 💬 📚")

if "messages" not in st.session_state.keys(): # Initialize the chat message history
    st.session_state.messages = [
        {"role": "assistant", "content": "Ask me a question!"}
    ]

if prompt := st.chat_input("Your question"): # Prompt for user input and save to chat history
    st.session_state.messages.append({"role": "user", "content": prompt})


for message in st.session_state.messages: # Display the prior chat messages
    with st.chat_message(message["role"]):
        if message["role"] == "chartassistant":
            displaychart(message["content"]["chartdata"],message["content"]["df"],st)
        else:   
            st.markdown(message["content"])

# If last message is not from assistant, generate a new response
if st.session_state.messages[-1]["role"] != "assistant":
    with st.chat_message("assistant"):
        with st.spinner("..."):
            try:
                crew = DbexecutionCrew("sales",prompt)
                data = crew.run()
                data = f"{str(data)}"
                #check if data is of type CSV
                cdata = cleanup(data)
                if not is_csv(cdata):
                    if isinstance(cdata, list):
                        for rd in cdata:
                            #check if rawdata is an object
                            if isinstance(rd, dict):
                                #st.json(rd)
                                st.table(pd.DataFrame([rd]))
                            else:
                                st.markdown(rd)
                    elif isinstance(cdata, dict):
                        #st.json(cdata)
                        #st.table(pd.DataFrame([cdata]))
                        st.dataframe(pd.DataFrame([cdata]), height=200,hide_index=True,use_container_width=True)
                    else:
                        st.markdown(cdata)
                else:
                    df = pd.read_csv(StringIO(cdata))
                    print("-df -"*7)
                    print(df)
                    #st.table(df.to_dict())
                    st.dataframe(df, height=200,hide_index=True,use_container_width=True)
                    if len(df) > 500:
                        st.markdown("Too many rows to visualize..skipping")
                    else:
                        with st.spinner("generating visualizations"):
                            #take first 5 rows on df
                            columnson = generate_header_attributes_json(df)
                            print("-data header columns-"*5)
                            print(columnson)
                            vcrew = DataVisualizationCrewSA(columnson,prompt)
                            chartdata = vcrew.run()
                            print("-chart Data -")
                            print(chartdata)
                            chartdata = cleanup(chartdata)
                            isjson = is_json(chartdata)
                            if isjson:
                                displaychart(chartdata,df.to_json(),st)                         
                                message = {"role": "chartassistant", "content": {"chartdata":chartdata,"df":df.to_json()}}
                                st.session_state.messages.append(message) # Add response to message history
            
            except Exception as e:
                st.markdown("Unexpected error")
                print(e) 
            





