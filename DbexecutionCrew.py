from DbexecutionAgent import DbexecutionAgent
from DbexecutionTask import DbexecutionTask
from crewai import Agent, Task, Crew, Process
from tools  import getllm

class DbexecutionCrew():
    def __init__(self,schema, query) -> None:
        self.schema = schema
        self.query = query
    
    def run(self):
        agent =DbexecutionAgent.genericdbexecutionAgent()
        task = DbexecutionTask.genericdbtask(self.schema, self.query, agent)
        crew = Crew(
                agents=[agent],
                tasks=[task],
                verbose=2,
                manager_llm=getllm(temperature=0.2)
             )

        res = crew.kickoff()
        return res