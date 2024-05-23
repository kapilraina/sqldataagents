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
            Determine the chart types and chart data for each chart from the provided input. Augment the charting data to the input data.
            For chart type determined, convert the input data that can be used to display this chart.
            .""",
            agent=agent,
            expected_output="""
            1. For each unique chart recommended, generate the title of the chart.
            The tool respond only with name of chart and input data for the chart in JSON. Do not generate any extra characters. 
             For ANY outputs, do not include  ``` at the end.
            2. High level output JSON structure :
                {
                    rawdata": {
                                #Input data passed to the agent
                    },
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
			
            """
        )

    def convertinputtocompatiblecharting_o_sa(input,agent):
        return Task(
            description=f"""
            ###
            Input:
            ###
            {input}
            ###
            Determine the chart types and chart attributes for each chart from the provided input. 
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
                            "x":[....], # represents the column name to be used on X-Axis
                            "y":[....] # represents the column name to be used on Y-Axis
                        }
                    }
                ]

            3. If input data cannot be meaningfully represented as chart, just return empty array.
            4. Even if one chart type is determined, return it as array
            5. If there is no input data provided, return an empty array.
            6. ALWAYS return a well-formed JSON object ONLY
            """
        )