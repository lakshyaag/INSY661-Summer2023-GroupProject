import re


def extract_sql_info(file_path):
    with open(file_path, "r") as file:
        content = file.read()

    # Split the content by '-- BREAK'
    queries = content.split("-- BREAK")

    query_info = []

    for i, query in enumerate(queries):
        # Extract query title
        title_search = re.search(r"-- (\d+)\. (.*)", query)
        if title_search:
            query_number = title_search.group(1)
            query_title = title_search.group(2)
        else:
            query_number = None
            query_title = None

        # Extract query objective
        objective_search = re.search(
            r"/\*[\s]*(Objective:.*?)[\s]*\*/", query, re.DOTALL
        )
        if objective_search:
            query_objective = (
                objective_search.group(1)
                .replace("\n", " ")
                .replace("Objective:", "")
                .strip()
            )
        else:
            query_objective = None
        # Extract query code
        query_code = query.split("*/")[-1].strip()

        query_info.append(
            {
                "Query Number": query_number,
                "Query Title": query_title,
                "Query Objective": query_objective,
                "Query Code": query_code,
            }
        )

    return query_info
