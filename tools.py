import json
import os
import pandas as pd

import requests
from sqlalchemy import create_engine,Engine,text
from langchain.tools import tool
from llama_index.core import SQLDatabase
from llama_index.core.query_engine import NLSQLTableQueryEngine
from llama_index.core.query_engine import RetrieverQueryEngine
from llama_index.core.retrievers import NLSQLRetriever
from llama_index.llms.openai import OpenAI
from langchain_community.utilities import GoogleSerperAPIWrapper
from langchain.agents import AgentType, Tool
#from langchain.chat_models import ChatOpenAI
from langchain_community.chat_models import ChatOpenAI
#from langchain_openai import ChatOpenAI

from llama_index.core.indices.struct_store.sql_query import (
    SQLTableRetrieverQueryEngine,
)
from llama_index.core.objects import (
    SQLTableNodeMapping,
    ObjectIndex,
    SQLTableSchema,
)
from llama_index.core import VectorStoreIndex

from llama_index.core.schema import NodeWithScore,TextNode
from decimal import Decimal
import datetime


# Function to parse datetime and Decimal objects
def custom_decoder(obj):
    if isinstance(obj, datetime.datetime):
        return obj.isoformat()
    if isinstance(obj, Decimal):
        return float(obj)
    return obj
def convertNodeDataToJson(data):
    extracted = []
    for node in data:
        meta = node.metadata
        extracted.append(meta)
    return json.dumps(extracted,default=custom_decoder)


all_tables =["customers","order_details","orders","products"]

def getNLSQLRetriever(dbschema: str):
     engine = createdatabaseengine(schema_=dbschema)
     sql_database = SQLDatabase(engine)
     nl_sql_retriever = NLSQLRetriever(sql_database=sql_database,return_raw=False,llm=None)
     return nl_sql_retriever

#@tool("SQL Database Engine Creator")
def createdatabaseengine(schema_: str) -> Engine:
    '''Creates  database engine for PostGreSQL database for the provided schema in the parameter. \
      This tool is needed to execute all DDL, DML and Queries for the given schema in the database. \
      The tool manages connection details to a database instance internally'''
    #connection_string = "mysql+mysqlconnector://root:password@localhost:3306/sqlalchemy"
    connection_string = "postgresql+psycopg2://postgres:password@localhost:5432/sqlalchemy"
    engine = create_engine(connection_string, echo=False,connect_args={'options': '-csearch_path={}'.format(schema_)})
    return engine

@tool("SQL Statement Executor")
def execute_database_query(query: str, dbschema: str) -> str:
    '''Should be called when input is a well formatted SQL query and not otherwise.
      Executes a SQL query on the provided database schema. \
      The tool expects schema and query string to execute on a database engine.
      The tool returns structured result set.
      The tool returns a result set or an error indicating what may have be wrong with the execution of query.\
      '''
    try:
        engine = createdatabaseengine(schema_=dbschema)
        with engine.begin() as conn:
            result = conn.execute(text(query))
            rows =[]
            for row in result:
                rows.append(row)
            print(f"\n{rows}")
            return rows
    except Exception as e:
        return f"Error executing statement. {e}"

@tool("Natural Language to query for simple inferencing")
def execute_naturallanguage_text_to_SQL_Inference(phrase: str, dbschema: str) -> str:
    '''Uses the NLSQLTableQueryEngine framework to create a query engine that understands natural language inputs
       and generates appropriate SQLs internally for execution and respond with natural language inferencing.
       Should not be used to retrieve datasets from the database.
       Returns data in natural language format.
      The tool expects schema and a natural language phrase string to execute on a NLSQLTableQueryEngine engine.
      The tool returns a result in a natural language or an error indicating what may have be wrong with the execution of query.\
      '''
    try:
        engine = createdatabaseengine(schema_=dbschema)
        sql_database = SQLDatabase(engine)
        engine = NLSQLTableQueryEngine(sql_database=sql_database,llm=getgpt4llm())
        res = engine.query(phrase)
        print(f"\n{res}")
        return res
    except Exception as e:
        return f"Error executing statement. {e}"

@tool("Natural Language to query for dataset retrieval")
def execute_naturallanguage_text_to_SQL_Retrieval(phrase: str, dbschema: str) -> str:
    '''
    Uses the NLSQLRetriever framework to create a query engine that understands natural language inputs
    and generates appropriate SQLs internally for execution and respond with raw dataset from database. 
    Should not be used for inferencing, but only dataset phrases.
    The tool returns result set and NOTHING else.
    Returns data in structured format like CSV for all dataset retrievals.
    For JSON outputs does not include ``` at the end. 
    The tool expects schema and a natural language phrase string to execute on a NLSQLRetriever engine.
    The tool returns a result as dataset or an error indicating what may have be wrong with the execution of query.\
    '''
    try: 
        nl_sql_retriever = getNLSQLRetriever(dbschema=dbschema)
        query_engine = RetrieverQueryEngine.from_args(nl_sql_retriever)
        res = nl_sql_retriever.retrieve(phrase)
        #res=query_engine.query(phrase)
        print("\n\n")
        print("-from retriever-"*10)
        print(f"\n{res}")

        convertedres = convertNodeDataToJson(res)
        print("\n\nexecute_naturallanguage_text_to_SQL_Retrieval")
        print("-to JSON-"*10)
        print(f"\n{convertedres}")

        df = pd.DataFrame(json.loads(convertedres))
        
        print("\n\nexecute_naturallanguage_text_to_SQL_Retrieval")
        print("-to DF-"*10)
        print(f"\n{df}")

        csv_data = df.to_csv(index=False)
        print("\n\nexecute_naturallanguage_text_to_SQL_Retrieval")
        print("-to CSV-"*10)
        print(f"\n{csv_data}")
        return csv_data
    
    except Exception as e:
        return f"Error executing statement. {e}"
    
#@tool("Natural Language to query for simple inferencing")
def execute_naturallanguage_text_to_SQL_InferenceWithSchemaIndex(phrase: str, dbschema: str) -> str:
    '''Uses the SQLTableRetrieverQueryEngine framework to create a query engine that understands natural language inputs
       and generates appropriate SQLs internally for execution and respond with natural language inferencing.
      The tool expects schema and a natural language phrase string to execute on a SQLTableRetrieverQueryEngine engine.
      The tool returns a result or an error indicating what may have be wrong with the execution of query.\
      '''
    try:
        engine = createdatabaseengine(schema_=dbschema)
        sql_database = SQLDatabase(engine)
        table_node_mapping = SQLTableNodeMapping(sql_database)
        table_schema_objs = [SQLTableSchema(table_name=table) for table in all_tables]
        obj_index = ObjectIndex.from_objects(
                                                table_schema_objs,
                                                table_node_mapping,
                                                VectorStoreIndex,
                                            )

        engine =  SQLTableRetrieverQueryEngine(
                                                sql_database=sql_database, 
                                                table_retriever=obj_index.as_retriever(similarity_top_k=10),
                                                llm=getgpt4llm()
                                        )
        res = engine.query(phrase)
        print(f"\n{res}")
        return res
    except Exception as e:
        return f"Error executing statement. {e}"

def searchtool(): #tool("Current Search")
    search = GoogleSerperAPIWrapper(k=2)
    searchtool = Tool(
        name = "Current Search (powered by SerpAPI)",
        func=search.run,
        description="useful for when you need to answer questions by searching the internet"
    )
    return searchtool

'''
def getbedrockllm():
    REGION = os.environ.get('REGION','us-east-1')
    boto3_session = boto3.Session(region_name=REGION)
    brclient = boto3_session.client(service_name="bedrock-runtime")
    model_kwargs_claude = {"temperature": 0.3}
    llm_claude = Bedrock(model_id="meta.llama2-70b-chat-v1x", 
                    region_name=REGION,
                    #endpoint_url="vpce-063d3bd2efebbf735-wkfg6bqa.bedrock-runtime.us-east-1.vpce.amazonaws.com",
                    client=brclient,
                    verbose=False,
                    model_kwargs=model_kwargs_claude)
    return llm_claude
'''
def getgpt4llm(temperature=0.3):
    
    llm = ChatOpenAI(model_name="gpt-4o", temperature=temperature)
    return llm

def is_json(myjson):
    try:
        json_object = json.loads(myjson)
    except ValueError as e:
        print(e)
        return False
    return True

def cleanuptojson(input):
    #if JSON input contains ``` at the end, remove that and send only JSON part
    if input.endswith("```"):
        input = input[:-3]
    #if JSON ends with ```, remove that and send only JSON part
    if input.startswith("```"):
        input = input[3:]
    #replace all single quotes with double quotes
    input = input.replace("'",'"')
    return input

#data = '[{"product_name": "Sony 65 inch 4K OLED A90J TV", "total_quantity": 3, "total_sales": 10499.97}, {"product_name": "iPhone 13 Pro", "total_quantity": 6, "total_sales": 5999.94}, {"product_name": "Samsung Galaxy Z Fold 3", "total_quantity": 2, "total_sales": 3599.98}, {"product_name": "Dell XPS 15 9510 Laptop", "total_quantity": 2, "total_sales": 3199.98}, {"product_name": "Amazon Echo Show 10 (3rd Gen)", "total_quantity": 4, "total_sales": 999.96}, {"product_name": "Bose QuietComfort 45 Headphones", "total_quantity": 3, "total_sales": 989.97}, {"product_name": "KitchenAid Artisan Stand Mixer", "total_quantity": 2, "total_sales": 799.98}, {"product_name": "Ninja Foodi 8-Quart 9-in-1 Pressure Cooker", "total_quantity": 3, "total_sales": 659.97}, {"product_name": "Cuisinart Grind & Brew 12-Cup Coffee Maker", "total_quantity": 5, "total_sales": 649.95}, {"product_name": "Instant Pot Duo Evo Plus 6-Quart", "total_quantity": 5, "total_sales": 599.95}]'
#print(is_json(data))

#executedatabasequerystatement("select * from products","sales")