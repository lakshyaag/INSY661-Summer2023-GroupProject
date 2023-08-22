# INSY 661 - Group Project - Group 7

This project contains backend SQL queries and a frontend application built with Streamlit.

## Project Structure

The project has the following structure:

- `backend`: This directory contains the SQL queries.
- `frontend`: This directory contains the Python scripts for the Streamlit application.
- `.streamlit`: This directory contains the Streamlit configuration and secrets files.

## Prerequisites

- Python 3.6 or higher
- pip (Python package installer)
- phpMyAdmin

## How to Run

Follow these steps to run the project:

1. **Install the required Python packages**

    Navigate to the project directory and run the following command in your terminal:

    ```bash
    pip install -r requirements.txt
    ```

2. **Import the SQL file to phpMyAdmin**

    - Open phpMyAdmin in your web browser.
    - Select your database on the left side. If you haven't created a database yet, create one.
    - Click on the 'Import' tab at the top.
    - Click 'Choose File' and select the `backend/communitrade_insy661.sql` file.
    - Click 'Go' at the bottom to start the import process.

3. **Check the SQL file**

    Ensure that the `backend/final_queries.sql` file exists. This file contains the SQL queries that the application uses.

4. **Update the Database Credentials**

    - Open the `secrets.toml` file located in the `.streamlit` directory.
    - Under `[connections.mysql]`, update the following fields with your own database credentials:
        - `host`: Your database host
        - `port`: Your database port
        - `database`: Your database name
        - `username`: Your database username
        - `password`: Your database password
    - Save the changes.

    The updated `secrets.toml` should look like this:

    ```toml
    [connections.mysql]
    dialect = "mysql"
    host = "<your_database_host>"
    port = <your_database_port>
    database = "<your_database_name>"
    username = "<your_database_username>"
    password = "<your_database_password>"
    ```

    Replace `<your_database_host>`, `<your_database_port>`, `<your_database_name>`, `<your_database_username>`, and `<your_database_password>` with your actual database credentials.

5. **Run the Streamlit application**

    Use the following command in your terminal to run the Streamlit application:

    ```bash
    streamlit run frontend/app.py
    ```

    The application will start, and you can access it by opening your web browser and navigating to `localhost:8501`.
