#!/usr/bin/python3
"""
This python script Records all tasks that are owned by this employee
Using this format { "USER_ID": [{"task": "TASK_TITLE",
"completed": TASK_COMPLETED_STATUS, "username": "USERNAME"},
 {"task": "TASK_TITLE", "completed": TASK_COMPLETED_STATUS,
 "username": "USERNAME"}, ... ]}
"""
if __name__ == '__main__':
    import json
    import requests
    import sys

    user_id = int(sys.argv[1])
    api_url = 'https://jsonplaceholder.typicode.com/'
    user_data = requests.get(api_url + "users/{}".format(user_id)).json()
    user_todos = requests.get(api_url + 'todos').json()

    user_name = user_data['username']
    user_tasks = []
    each = {}

    for task in user_todos:
        if task['userId'] == user_id:
            each["task"] = "{}".format(task.get('title'))
            each["completed"] = task.get('completed')
            each["username"] = "{}".format(user_name)
            user_tasks.append(each.copy())

    user_json = {"{}".format(user_id): user_tasks}
    with open("{}.json".format(user_id), 'w') as file_:
        json.dump(user_json, file_)
