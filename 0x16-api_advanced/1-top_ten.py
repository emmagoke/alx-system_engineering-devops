#!/usr/bin/python3
"""
This python queries the Reddit API and prints the titles of the first 10 hot
posts listed for a given subreddit.
"""
import requests


def top_ten(subreddit):
    """
    prints the titles of the first 10 hot posts listed for a given subreddit.
    """
    url = "https://www.reddit.com/r/{}/.json".format(subreddit)
    headers = {'User-Agent': 'Bot/0.0.1'}
    data = requests.get(url, headers=headers)
    if data:
        for child in data.json()['data']['children'][:10]:
            print(child['data']['title'])
    else:
        print(None)
