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

        st.dataframe(conn.query(query_code), use_container_width=True, hide_index=True)


query_info = extract_sql_info("./backend/final_queries.sql")

st.set_page_config(layout="wide")

# Establish a connection to a MySQL database
conn = st.experimental_connection("mysql", type="sql")

# Set the title of the Streamlit app
st.title("Group 7 - INSY 661 - Final Project")
st.header("Browse queries")

# st.write(query_info)

with st.container():
    for query in query_info[:-2]:
        query_number = query["Query Number"]
        query_title = query["Query Title"]
        query_objective = query["Query Objective"]
        query_code = query["Query Code"]

        get_query_results(query_number, query_title, query_objective, query_code)

    # Query 19 and 20 require user input to be passed into the SQL code
