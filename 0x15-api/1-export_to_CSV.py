#!/usr/bin/python3
"""
This python script Records all tasks that are owned by this employee
using the format "USER_ID","USERNAME","TASK_COMPLETED_STATUS","TASK_TITLE"
"""
if __name__ == '__main__':
    import requests
    import sys

    user_id = int(sys.argv[1])
    user_url = 'https://jsonplaceholder.typicode.com/users?id=' + str(user_id)
    user_todo_url = 'https://jsonplaceholder.typicode.com/todos'
    user_data = requests.get(user_url).json()
    user_tasks = requests.get(user_todo_url).json()
    user_name = ''

    user_name = user_data[0]['username']

    with open("{}.csv".format(user_id), 'w') as file_:
        for task in user_tasks:
            if task['userId'] == user_id:
                write_ = '"{}","{}","{}","{}"\n'.format(
                         user_id, user_name, task['completed'], task['title'])
                file_.write(write_)
