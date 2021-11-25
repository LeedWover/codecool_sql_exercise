import psycopg2
student_id = input('Enter student ID: ')
project_id = input('Enter project id: ')
mark = input('Enter mark: ')
date_of_review = input('Enter date: ')
preview_description = input('Enter description: ')
reviewer_id = input('Enter your ID: ')


try:
    connection = psycopg2.connect(user="postgres",
                                  password="postgres",
                                  host="localhost",
                                  port="5432",
                                  database="codecool")
    cursor = connection.cursor()

    postgres_insert_query = """ INSERT INTO reviews (student_id, project_id, mark, date_of_review, review_description, reviewer_id) VALUES (%s,%s,%s,%s,%s,%s)"""
    record_to_insert = (student_id, project_id, mark,
                        date_of_review, preview_description, reviewer_id)
    cursor.execute(postgres_insert_query, record_to_insert)

    connection.commit()
    count = cursor.rowcount
    print(count, "Record inserted successfully into mobile table")

except (Exception, psycopg2.Error) as error:
    print("Failed to insert record into mobile table", error)

finally:

    if connection:
        cursor.close()
        connection.close()
        print("PostgreSQL connection is closed")
