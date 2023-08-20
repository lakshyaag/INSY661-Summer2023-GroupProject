import streamlit as st
from read import extract_sql_info


def get_query_results(query_number, query_title, query_objective, query_code):
    """
    Function to display the results of a SQL query in a Streamlit expander.

    Parameters:
    query_number (int): The number of the query.
    query_title (str): The title of the query.
    query_objective (str): The business objective of the query.
    query_code (str): The SQL code for the query.

    Returns:
    None
    """
    with st.expander(f"Query {query_number}: {query_title}"):
        st.markdown("#### Business objective")
        st.write(query_objective)

        st.code(query_code, language="sql", line_numbers=True)

        run_query = st.button("Run query", key=query_number)
        if run_query:
            st.dataframe(
                conn.query(query_code), use_container_width=True, hide_index=True
            )


query_info = extract_sql_info("./backend/final_queries.sql")

st.set_page_config(layout="wide")

# Establish a connection to a MySQL database
conn = st.experimental_connection("mysql", type="sql")

# Set the title of the Streamlit app
st.title("Group 7 - INSY 661 - Final Project")
st.header("Browse queries")


with st.container():
    # User-generated input
    with st.expander("User-generated input"):
        query_code = st.text_input("Enter your query:")

        run_query = st.button("Run query", key="0")
        if run_query and query_code != "":
            st.dataframe(
                conn.query(query_code), use_container_width=True, hide_index=True
            )

    for query in query_info[:-2]:
        query_number = query["Query Number"]
        query_title = query["Query Title"]
        query_objective = query["Query Objective"]
        query_code = query["Query Code"]

        get_query_results(query_number, query_title, query_objective, query_code)

    # Query 19 requires user input to be passed into the SQL code
    with st.expander("Query 19: Query product listings by title and location"):
        st.markdown("#### Business objective")
        st.write(query_info[-2]["Query Objective"])

        title = st.text_input("Enter a title for search for:")
        location = st.text_input("Enter a location to search for:")

        query_code = (
            query_info[-2]["Query Code"]
            .replace("{title}", title)
            .replace("{location}", location)
        )

        st.code(query_code, language="sql", line_numbers=True)

        run_query = st.button("Run query", key="19")
        if run_query:
            st.dataframe(
                conn.query(query_code), use_container_width=True, hide_index=True
            )

    # Query 20 requires user input to be passed into the SQL code
    with st.expander("Query 20: Number of searches by keyword"):
        st.markdown("#### Business objective")
        st.write(query_info[-1]["Query Objective"])

        keyword = st.text_input("Enter a keyword to search for:")

        query_code = query_info[-1]["Query Code"].replace("{keyword}", keyword)
        st.code(query_code, language="sql", line_numbers=True)

        run_query = st.button("Run query", key="20")
        if run_query:
            st.dataframe(
                conn.query(query_code), use_container_width=True, hide_index=True
            )
