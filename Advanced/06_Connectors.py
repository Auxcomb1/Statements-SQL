import mysql.connector

config = {
    'user': 'vs_unix',
    'password': 'Contraseña',
    'host': 'localhost',
    'database': 'Curso'  
}

connection = mysql.connector.connect(**config)
cursor = connection.cursor()

query = "SELECT * FROM users"
cursor.execute(query)
result = cursor.fetchall()

for row in result:
    print(row)

cursor.close()
connection.close()