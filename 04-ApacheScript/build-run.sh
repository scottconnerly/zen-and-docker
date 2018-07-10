#!/usr/bin/env bash


docker build -t myapache:latest .
docker run -d -p 8888:80 myapache:latest


