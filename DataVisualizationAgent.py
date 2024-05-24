from crewai import Agent, Task, Crew, Process
from textwrap import dedent
from tools import (
    execute_database_query,
    execute_naturallanguage_text_to_SQL_Inference,
    execute_naturallanguage_text_to_SQL_Retrieval,
    searchtool,
    getgpt4llm
)
import logging
import os
import sys



logging.basicConfig(stream=sys.stdout, level=logging.INFO)
logging.getLogger().addHandler(logging.StreamHandler(stream=sys.stdout))

class DataVisualizationAgent():

    def unifiedstreamlitchartingAgent_o():
            chartingAgent = Agent(
                role="Streamlit Chart Agent",
                goal='''
                Inspects the input dataset pattern and determines what MEANINGFUL charts can be derived.
                Charts should convey business intelligence and be helpful for data inferencing. Don't make-up charts.
                Makes recommendations from these Streamlit chart types:
                Area Chart : https://docs.streamlit.io/develop/api-reference/charts/st.area_chart \n
                Bar Chart : https://docs.streamlit.io/develop/api-reference/charts/st.bar_chart \n
                Line Chart : https://docs.streamlit.io/develop/api-reference/charts/st.line_chart \n
                Map : https://docs.streamlit.io/develop/api-reference/charts/st.map \n
                Scatter Chart : https://docs.streamlit.io/develop/api-reference/charts/st.scatter_chart \n

                Takes a CSV input and determines these things :
                1. how many charts can be meaningfully created with a combination of fields in input data. 
                Recommend ONE chart type for unique field combinations from input. 
                2. Each chart type determined should have two dimensions only.
                3. 
                return the name of chart from this list:
                Area Chart
                Bar Chart
                Line Chart
                Map
                Scatter Chart
                4. Create keys from the input CSV header

                ''',
                backstory=dedent("""This dynamic agent is able to understand the kind of chart is possible from input data"""),
                #tools=[searchtool()],
                verbose=True,
                allow_delegation=True,
                llm=getgpt4llm(temperature=0.2),
                max_iterations=2
            )
            return chartingAgent