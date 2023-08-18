import streamlit as st


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
    with st.expander(f"Query {query_number}"):
        st.header(query_title)
        st.subheader(f"Business objective: {query_objective}")

        st.dataframe(conn.query(query_code), use_container_width=True)


st.set_page_config(layout="wide")

# Establish a connection to a MySQL database
conn = st.experimental_connection("mysql", type="sql")

# Set the title of the Streamlit app
st.title("Group 7 - INSY 661 - Final Project")

# Display the results of two SQL queries using the get_query_results function
get_query_results(
    1,
    "Count of listing per category",
    "Count of listing per category to determine the top-performing item categories.",
    """
    -- Objective: Count of listing per category to determine the top-performing item categories 
    SELECT c.categoryName,
        COUNT(l.listingID) AS listingCount
    FROM listing l
        LEFT JOIN category c ON c.categoryId = l.categoryId
    GROUP BY c.categoryId
    ORDER BY listingCount DESC;
    -- BREAK
    """,
)

get_query_results(
    2,
    "Average number of messages exchanged per category",
    "Find the average number of messages exchanged per category to unveil communication insights and interaction.",
    """
    SELECT c.categoryName,
        AVG(m.messageCount) AS averageMessageCount
    FROM category c
        LEFT JOIN (
            SELECT l.categoryID,
                l.listingID,
                COUNT(m.messageID) AS messageCount
            FROM listing l
                LEFT JOIN message m ON m.listingID = l.listingID
            GROUP BY l.listingID
        ) m ON m.categoryID = c.categoryID
    GROUP BY c.categoryID
    ORDER BY averageMessageCount DESC;
    -- BREAK
    """,
)
