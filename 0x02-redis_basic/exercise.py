#!/usr/bin/env python3
import redis
import uuid
from typing import Union


class Cache:
    def __init__(self):
        """
        initialise the cache class
        """
        self._redis = redis.Redis()
        self._redis.flushdb()

    def store(self, data: Union[str, bytes, int, float]) -> str:
        """
        store in redis data that is inputted
        Args:
            data - str, bytes, int or float
        Return:
            key
        """
        key = str(uuid.uuid4())
        self._redis.mset({key: data})
        return key
