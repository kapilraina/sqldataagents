from DataVisualizationAgent import DataVisualizationAgent
from DataVisualizationTask import DataVisualization
from crewai import Agent, Task, Crew, Process

class DataVisualizationCrew():
    def __init__(self,input) -> None:
        self.input = input
    
    def run(self):
        agent =DataVisualizationAgent.unifiedstreamlitchartingAgent_o()
        task = DataVisualization.convertinputtocompatiblecharting(self.input,agent)
        crew = Crew(
                agents=[agent],
                tasks=[task],
                verbose=2
             )

        res = crew.kickoff()
        return res



class DataVisualizationCrewSA():
    def __init__(self,input) -> None:
        self.input = input
    
    def run(self):
        agent =DataVisualizationAgent.unifiedstreamlitchartingAgent_o()
        task = DataVisualization.convertinputtocompatiblecharting_o_sa(self.input,agent)
        crew = Crew(
                agents=[agent],
                tasks=[task],
                verbose=2
             )

        res = crew.kickoff()
        return res