#!/usr/bin/python3
"""
This python script gets the employee name, tasks completed by the employee,
and the total tasks given to the employee
"""
if __name__ == '__main__':
    import requests
    import sys

    user_id = int(sys.argv[1])
    user_data_url = 'https://jsonplaceholder.typicode.com/users'
    user_todo_url = 'https://jsonplaceholder.typicode.com/todos'
    user_data = requests.get(user_data_url).json()
    user_todos = requests.get(user_todo_url).json()

    user_name = ''
    tasks_completed = 0
    total_tasks = 0
    tasks_title = []

    for user in user_data:
        if user['id'] == user_id:
            user_name = user['name']
            break

    for task in user_todos:
        if task['userId'] == user_id:
            if task['completed']:
                tasks_completed += 1
                tasks_title.append(task['title'])
            total_tasks += 1
    print("Employee {} is done with tasks({}/{}):".format(
          user_name, tasks_completed, total_tasks))
    for title in tasks_title:
        print("\t {}".format(title))
