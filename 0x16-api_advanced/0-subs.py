#!/usr/bin/python3

"""
Queries the Reddit API
and returns the number of subscribers for a given subreddit
"""

import requests

BASE = 'https://www.reddit.com/r/'


def number_of_subscribers(subreddit):
    """function"""
    headers = {'User-Agent': 'my-app/0.0.1'}
    data = requests.get(BASE + str.format("{}/about.json",
                        subreddit), headers=headers,
                        allow_redirects=False).json()
    if 'error' in data:
        return 0
    return data['data']['subscribers']
