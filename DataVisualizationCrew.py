from DataVisualizationAgent import DataVisualizationAgent
from DataVisualizationTask import DataVisualization
from crewai import Agent, Task, Crew, Process
from tools import getllm

class DataVisualizationCrew():
    def __init__(self,input) -> None:
        self.input = input
    
    def run(self):
        agent =DataVisualizationAgent.unifiedstreamlitchartingAgent_o()
        task = DataVisualization.convertinputtocompatiblecharting(self.input,agent)
        crew = Crew(
                agents=[agent],
                tasks=[task],
                verbose=2,
                manager_llm=getllm(temperature=0.2)
             )

        res = crew.kickoff()
        return res



class DataVisualizationCrewSA():
    def __init__(self,input,query) -> None:
        self.input = input
        self.query = query
    
    def run(self):
        agent =DataVisualizationAgent.unifiedstreamlitchartingAgent_o()
        task = DataVisualization.convertinputtocompatiblecharting_o_sa(self.query,self.input,agent)
        crew = Crew(
                agents=[agent],
                tasks=[task],
                verbose=2,
                manager_llm=getllm(temperature=0.2)
             )

        res = crew.kickoff()
        return res