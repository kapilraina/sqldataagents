
import logging
import sys
from AnalyticsExecutionCrew import AnalyticsCrew
import streamlit as st
import json
import pandas as pd
from tools import is_json
import np
from tools import is_json,cleanup

logging.basicConfig(stream=sys.stdout, level=logging.ERROR)
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
                crew = AnalyticsCrew("sales",prompt)
                data = crew.run()
                print("--Raw--"*10)
                print("\n")
                print(data)
                print("\n")
                cleaneddata = cleanup(data)
                print("-Cleaned-"*10)
                print("\n")
                print(cleaneddata)
                print("\n")
                print("--"*50)
                isjson = is_json(cleaneddata)
                if not isjson:
                    st.markdown("Unexpected data")
                else:
                    jdata = json.loads(cleaneddata)
                    #check if jdata is empty
                    if not jdata:
                        st.markdown("No data returned")
                    else:
                        #check if jdata container rawdata key
                        if "rawdata" not in jdata:
                            st.markdown("No data returned")
                        else:
                            rawdata = jdata["rawdata"]     
                            df = pd.DataFrame(rawdata)
                            st.table(df.to_dict())      
                            #Chart thing
                            charts = jdata["charts"]
                            for chart in charts:
                                if not chart["chart_type"] =="NO_CHARTS":
                                    st.subheader(chart['title'])
                                    _data_=[]
                                    _cols_=[]
                                    #iterate through all keys in data
                                    for key in chart['data']:
                                        _cols_.append(key)
                                        _data_.append(chart['data'][key])
                                    cdf = pd.DataFrame(np.array(list(zip(*_data_))),columns=_cols_)
                                    cdf[_cols_[1]] = cdf[_cols_[1]].astype(float)
                                    if chart["chart_type"] == "Bar Chart":
                                        cdf = cdf.sort_values(by=_cols_[1],kind='mergesort',ascending=False)
                                        st.bar_chart(cdf,x=_cols_[0],y=_cols_[1])
                                    if chart["chart_type"] == "Line Chart":
                                        st.line_chart(cdf,x=_cols_[0],y=_cols_[1])         
                                    if chart["chart_type"] == "Scatter Chart":
                                        st.scatter_chart(cdf,x=_cols_[0],y=_cols_[1])    
                                    if chart["chart_type"] == "Area Chart":
                                        st.area_chart(cdf,x=_cols_[0],y=_cols_[1])    
                                    if chart["chart_type"] == "Map":
                                        st.map(cdf,x=_cols_[0],y=_cols_[1])   

                            message = {"role": "assistant", "content": data}
                            st.session_state.messages.append(message) # Add response to message history
            except Exception as e:
                st.markdown("Unexpected error")
                print(e)        


