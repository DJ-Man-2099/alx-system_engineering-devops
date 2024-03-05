#!/usr/bin/python3

"""
Queries the Reddit API
and returns the number of subscribers for a given subreddit
"""

import requests

BASE = 'https://www.reddit.com/r/'


def top_ten(subreddit):
    """function"""
    headers = {'User-Agent': 'Custom22099'}
    data = requests.get(BASE + str.format("{}/hot.json?limit=10",
                        subreddit), headers=headers,
                        allow_redirects=False)
    if data.status_code != 200:
        print(None)
        return
    posts = data.json().get('data').get('children')
    for post in posts:
        print(post.get('data').get('title'))
