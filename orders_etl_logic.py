#orders_etl_logic.py
# import relevant python libraries
import pandas as pd
import sqlalchemy as db

# create an engine and load data to a postgresql database
orders_table = 'Users/user/relative_path_to_excel_file.xlsx'
engine = db.create_engine('postgresql://put_url_connection_here')

# create a function and put etl operations
def main():
  orders = pd.read_excel(orders_table, sheet_name='name_of_excel_sheet')
  
  orders = orders[["OrderID", "Date", "TotalDue", "Status", "CustomerID", "Salesperson"]]

  orders.to_sql('orders', engine, if_exists='replace', index=False)

  print("ETL script executed successfully")
