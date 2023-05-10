#!/usr/bin/python3
"""
This python script returns the number of subscribers (not active users, total
subscribers) for a given subreddit.
"""
import requests


def number_of_subscribers(subreddit):
    """
    returns the number of subscribers of the subreddit
    """
    url = "https://www.reddit.com/r/"
    headers = {'User-Agent': 'MyBot/0.0.1'}
    data = requests.get("{}{}/about.json".format(url, subreddit),
                        headers=headers, allow_redirects=False)
    if data.status_code == 200:
        data = data.json()
        no_sub = data['data']['subscribers']
        return no_sub
    return 0
