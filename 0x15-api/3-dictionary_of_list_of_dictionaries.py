#!/usr/bin/python3
"""
This python script Records all tasks from all employees
"""
if __name__ == '__main__':
    import json
    import requests

    api_url = 'https://jsonplaceholder.typicode.com/'
    users = requests.get(api_url + 'users').json()
    all_tasks = requests.get(api_url + 'todos').json()

    id_username = []

    for user in users:
        id_username.append((user.get('id'), user.get('username')))

    tasks = {"{}".format(id_): [] for id_, name in id_username}
    each = {}
    for task in all_tasks:
        for id_, username in id_username:
            if task['userId'] == id_:
                each["username"] = "{}".format(username)
                each["task"] = "{}".format(task.get('title'))
                each["completed"] = task.get('completed')

                tasks["{}".format(id_)].append(each.copy())
                break

    with open('todo_all_employees.json', 'w') as file_:
        json.dump(tasks, file_)
