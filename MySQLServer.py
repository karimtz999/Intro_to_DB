import mysql.connector

def create_database():
    try:
        
        db_connection = mysql.connector.connect(
            host="localhost",
            user="your_username",
            password="your_password"
        )

        cursor = db_connection.cursor()

        
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")

        print("Database 'alx_book_store' created successfully!")

    except mysql.connector.Error as err:
        print(f"Error: {err}")

    finally:
        
        if db_connection.is_connected():
            cursor.close()
            db_connection.close()

if __name__ == "__main__":
    create_database()
