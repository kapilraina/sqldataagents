
import logging
import sys
from DbexecutionCrew import DbexecutionCrew
from DataVisualizationCrew import  DataVisualizationCrew
import streamlit as st
import json
import pandas as pd
from tools import is_json,cleanup,is_csv
import np
from io import StringIO

logging.basicConfig(stream=sys.stdout, level=logging.INFO)
logging.getLogger().addHandler(logging.StreamHandler(stream=sys.stdout))

def displaychart(chartdata,st):
    jchartsdata = json.loads(chartdata)
    for jchartdata in jchartsdata:
        if not jchartdata["chart_type"] == "NO_CHARTS":
            st.subheader(jchartdata['title'])
            _data_=[]
            _cols_=[]
            #iterate through all keys in data
            for key in jchartdata['data']:
                _cols_.append(key)
                _data_.append(jchartdata['data'][key])
            
            
            cdf = pd.DataFrame(np.array(list(zip(*_data_))),columns=_cols_)
            cdf[_cols_[1]] = cdf[_cols_[1]].astype(float)

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
            displaychart(message["content"],st)
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
                                #st.table(pd.DataFrame([rd]))
                                st.dataframe(pd.DataFrame([rd]), height=200,hide_index=True,use_container_width=True)
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
                    #st.table(df.to_dict())
                    st.dataframe(df, height=200,hide_index=True,use_container_width=True)
                    if len(df) > 500:
                        st.markdown("Too many rows to visualize..skipping")
                    else:
                        with st.spinner("generating visualizations"):
                            vcrew = DataVisualizationCrew(df.to_csv())
                            chartdata = vcrew.run()
                            print("-chart Data -")
                            print(chartdata)
                            chartdata = cleanup(chartdata)
                            isjson = is_json(chartdata)
                            print(chartdata, isjson)
                            if isjson:
                                displaychart(chartdata, st)
                                message = {"role": "chartassistant", "content": chartdata}
                                st.session_state.messages.append(message) # Add response to message history

                            else:
                                st.markdown("Unexpected chart data")
            
            except Exception as e:
                st.markdown("Unexpected error")
                print(e) 
            




