from crewai import Agent, Task, Crew, Process

class DataVisualization():

    def convertinputtocompatiblecharting(input,agent):
        return Task(
            description=f"""
            Determine the chart types and chart data for each chart from the provided input.
            For chart type determined, convert the input data that can be used to display this chart.
            ###
            Input:
            ###
            {input}
            ###
            """,
            agent=agent,
            expected_output="""
            1. For each unique chart recommended, generate the title of the chart.
            The tool respond only with name of chart and input data for the chart in JSON. Do not generate any extra characters. 
             For ANY outputs, do not include  ``` at the end.
            2. High level output JSON structure to be STRICTLY followed:

                [
                    {
                        "chart_type": "...", # Type of Chart determined 
                        "title": ".....", #title of the chart
                        "data": {
                            "col1":[....],
                            "col2":[....]
                        }
                    }
                ]
            3. If input data cannot be meaningfully represented as chart, just return empty array.
            4. If there is no input data provided, return an empty object i.e. {}
            """
        )
    
    def convertinputtocompatiblecharting_o(agent):
        return Task(
            description=f"""
            Determine the chart types and chart data for each chart from the provided CSV input. Augment the charting data to the input data.
            For chart type determined, convert the input data that can be used to display this chart.
            .""",
            agent=agent,
            expected_output="""
            1. For each unique chart recommended, generate the title of the chart.
            The tool respond only with name of chart and input data for the chart in JSON. Do not generate any extra characters. 
             For ANY outputs, do not include  ``` at the end.
            2. High level output JSON structure :
                {
                    "rawdata": "",#Input csv data passed to the agent as list
                    "charts": [
                            {
                                "chart_type": "...", # Type of Chart determined 
                                "title": ".....", #title of the chart
                                "data": {
                                    "col1":[....],
                                    "col2":[....]
                                }
                            }
                        ]
                }
				
            3. If input data cannot be meaningfully represented as chart, just return empty array in "charts" attribute.
            4. For "charts" attribute Returns output as array, even if one chart type is determined.
            5. If there is no input data provided, return an empty object i.e. {}
            6. ALWAYS return the input data back in rawdata key, in the same format as passed.
            7. ALWAYS return the exact same input data back, even when there are no charts determined i.e. for NO_CHART scenarios.
            8. Never make any changes to input data
			
            """
        )

    def convertinputtocompatiblecharting_o_sa(query,data,agent):
        return Task(
            description=f"""
            Determine the chart types and chart attributes for each chart from the provided input data structure. 
            In addition use the intent from user query to determine the right chart types and attributes.
            ###
            Input Data Structure:
            {data}
            ###
            User Intent Query:
            {query}
            ###
            For chart type determined, use the inputdata to determine the attributes that should be used to create the 
            chart.
            .""",
            agent=agent,
            expected_output="""
            1. For each unique chart recommended, generate the title of the chart.
            The tool respond only with name of chart and attributes needed for the chart in JSON. Do not generate any extra characters. 
             For ANY outputs, do not include  ``` at the end.
            2. High level output JSON structure :

                [
                    {
                        "chart_type": "...", # Type of Chart determined 
                        "title": ".....", #title of the chart
                        "definition": {
                            "columns": {
                                "x":"column_name", #single column name to use used on X axis of chart
                                "y":"column_name1" #single column name to use used on Y axis of chart  
                        }
                    }
                ]

            3. If input data cannot be meaningfully represented as chart, just return empty array.
            4. Even if one chart type is determined, return it as array
            5. If there is no input data provided, return an empty array.
            6. ALWAYS return a well-formed JSON object ONLY
            7. DO NOT return ANY extra characters or text with the JSON. (such as 'my best complete final answer to the task.')
            """
        )