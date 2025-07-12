# ETL AUTOMATION uses technology to run ETL processes and workflows between tools and systems without manual intervention based on schedules or events.
# Tools for ETL AUTOMATION.
# 1. APACHE AIRFLOW
# 2. OOZIE
# 3. NIFI
# 4. LUIGI
# 5. MICROSOFT AZURE DATA FACTORY

# APACHE AIRFLOW is an open source platform designed to schedule and monitor workflows defined as directed acyclic graphs(DAGS)
# Each node represents a task to be executed.
# How to setup - airflow

# installing airflow - Run in your terminal 
pip install apache-airflow

# initialise the airflow database
airflow db init

# edit the airflow.cfg file that is found in %AIRFLOW_HOME/airflow.cfg
# search for [webserver] in the airflow.cfg file and add the following lines
authenticate = True
auth_backend = airflow.contrib.auth.backends.password_auth

# save and close file
# Go back to the terminal and run
airflow users create -u USERNAME -p PASSWORD -e EMAIL -r ROLE -f FIRSTNAME -l LASTNAME

# How a sample airflow users create looks
airflow users create --username admin --password admin --email odisvybz@gmail.com --role Admin --firstname edward --lastname kanwei

# start the airflow webserver and scheduler
airflow webserver --port 8080
# accept Allow to accept incoming communications

# Open a second terminal, and don't close the first terminal run
airflow scheduler

# open browser and navigate to 
http://localhost:8080
