from crewai import Agent, Task, Crew, Process
from textwrap import dedent
from tools import (
    execute_database_query,
    execute_naturallanguage_text_to_SQL_Inference,
    execute_naturallanguage_text_to_SQL_Retrieval,
    execute_naturallanguage_text_to_SQL_InferenceWithSchemaIndex,
    searchtool,
    getgpt4llm
)
import logging
import sys

logging.basicConfig(stream=sys.stdout, level=logging.INFO)
logging.getLogger().addHandler(logging.StreamHandler(stream=sys.stdout))

class DbexecutionAgent():
   
    def dbexecutionAgent():
        dbexecutionAgent = Agent(
                role="Database SQL Statement Executor",
                goal="Executes a SQL statement on the provided database engine. Responds with database output in a JSON format without any other transformations or inferences.",
                backstory=dedent(""" You provide a SQL statement that need to be executed on the provided database engine. Correct any syntax errors in a structured SQL."""),
                tools=[execute_database_query],
                verbose=True,
                allow_delegation=True,
                llm=getgpt4llm(),
                max_iterations=2
        )
        return dbexecutionAgent

    def nldbexecutionAgent():
        nldbexecutionAgent = Agent(
            role="Natural Language database querying engine",
            goal="Take a natural language phrase and uses the tools to generate SQLs and respond back with a natural language inferences.",
            backstory=dedent(""" You provide a natural language scenario statement that need to be used to generate inferences"""),
            tools=[execute_naturallanguage_text_to_SQL_Inference],
            verbose=True,
            allow_delegation=True,
            llm=getgpt4llm(),
            max_iterations=2
        )
        return nldbexecutionAgent
    
    def genericdbexecutionAgent():
        genericdbexecutionAgent = Agent(
            role="Database Querying Agent",
            goal='''Chooses the appropriate tool to use to query a database schema for a user input. 
            User input can be a structured SQL or a natural language phrase. 
            Correct any syntax errors in a structured SQL query.
            In case of exceptions from tool, FIX the error and try again till max iterations.
            If max iterations are reached, return the error message.
            Return only the query output and nothing else. Dont generate any analysis.
            For simple inferencing queries, Just return a normal inferencing text output.
            For dataset retrieval queries return a CSV (expected from the tool).
            If the output from tool is a well formed CSV, then return only the CSV and NOTHING else.
            For ANY outputs, do not include  ``` at the end.

            You many need to gather data from multiple tables to complete this task and thus execute the tools multiple times if needed.
            Please use the schema to arrive at best possible execution plan for the query using the tools provided.
            ''',
            backstory=dedent("""This dynamic agent is able to understand user queries and invoke appropriate tool to take action"""),
            tools=[
                    execute_naturallanguage_text_to_SQL_Retrieval,
                    execute_naturallanguage_text_to_SQL_Inference
                    #execute_naturallanguage_text_to_SQL_InferenceWithSchemaIndex
                ],
            verbose=True,
            allow_delegation=True,
            llm=getgpt4llm(),
            max_iterations=2
        )
        return genericdbexecutionAgent
    