
import logging
import sys
from DbexecutionCrew import DbexecutionCrew
from DataVisualizationCrew import DataVisualizationCrewSA
import streamlit as st
import json
import pandas as pd
from tools import is_json,cleanuptojson,getNLSQLRetriever,execute_naturallanguage_text_to_SQL_Inference
import np
from io import StringIO

logging.basicConfig(stream=sys.stdout, level=logging.INFO)
logging.getLogger().addHandler(logging.StreamHandler(stream=sys.stdout))



st.header("Agent Powered Information Bot 💬 📚")

if "messages" not in st.session_state.keys(): # Initialize the chat message history
    st.session_state.messages = [
        {"role": "assistant", "content": "Ask me a question!"}
    ]

if prompt := st.chat_input("Your question"): # Prompt for user input and save to chat history
    st.session_state.messages.append({"role": "user", "content": prompt})

for message in st.session_state.messages: # Display the prior chat messages
    with st.chat_message(message["role"]):
        st.write(message["content"])

# If last message is not from assistant, generate a new response
if st.session_state.messages[-1]["role"] != "assistant":
    with st.chat_message("assistant"):
        with st.spinner("..."):
            try:
                crew = DbexecutionCrew("sales",prompt)
                data = crew.run()

                data = f"{str(data)}"
                cdata = cleanuptojson(data)

                df = pd.read_csv(StringIO(cdata))
                st.table(df.to_dict())
                if len(df) > 500:
                    st.markdown("Too many rows to visualize..skipping")
                else:
                    with st.spinner("generating visualizations"):
                        #take first 5 rows on df
                        vcrew = DataVisualizationCrewSA(df.head(5).to_csv())
                        chartdata = vcrew.run()
                        print("-chart Data -")
                        print(chartdata)
                        chartdata = cleanuptojson(chartdata)
                        isjson = is_json(chartdata)
                        print(chartdata, isjson)
                        if isjson:
                            jchartsdata = json.loads(chartdata)
                            for jchartdata in jchartsdata:
                                if not jchartdata["chart_type"] == "NO_CHARTS":
                                    st.subheader(jchartdata['title'])
                                    chardef = jchartdata["definition"]

                                    _cols_=[chardef["x"][0],chardef["y"][0]]
                                    
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
            
            except Exception as e:
                st.markdown("Unexpected error")
                print(e) 
            

            message = {"role": "assistant", "content": data}
            st.session_state.messages.append(message) # Add response to message history


