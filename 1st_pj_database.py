
import pymysql
import pandas as pd
from sqlalchemy import create_engine

# con=sql.connect(host='localhost',user='root',passwd='ved@24072003',database='employee')

# if con.is_connected:
#     print("Connection successful")
# else:
#     print("Not successful")

# q="select salary+1+
# 0000 as total_salary from emp ;"
# df1=pd.read_sql(q,con)
# print(df1)


df = pd.DataFrame([[1, 2, 3, 4, 5], [5, 6, 7, 8, 9],[12,34,5,67,89]])
print(df)

password = 'ved24072003'
engine = create_engine(f'mysql+pymysql://root:{password}@localhost:3306/employee')

con = engine.connect()
df.to_sql('abcd', con, index=False, if_exists='replace')

