from crewai import Agent, Task, Crew, Process

class DbexecutionTask():

    def genericdbtask(schema, query,agent):
        return Task(
            description=f"""Execute the provided statement on {schema} schema
            ##
            {query}
            ##
            If needed gather data from multiple tables based on the relationships defined in schema.
            """,
            agent=agent
        )
    