# Udacity Capstone Project

[![bezunesh](https://circleci.com/gh/bezunesh/udacity-capstone.svg?style=svg)](https://app.circleci.com/pipelines/github/bezunesh/udacity-capstone)

## Project Overview
A django application to demonstrate a CI/CD pipeline implementaion and a rolling deployment on AWS Elastic Kubernetes Service.


**Local environment setup**

1. clone the repository
```bash
git clone https://github.com/bezunesh/udacity-capstone.git
cd udacity-capstone
```
  
2. create a virtual environment and activate it
```bash
make setup
```

3. Install dependecies
```bash
 make install
```
4. Run database migrations
```bash
make migrate
```
5. Run lint
```bash
make lint
```

**Project files**

- .circleci/ :  CicrcleCI piepline config file
- hello/ and helloworld/ : django application and project files
- kubernetes/ : contains k8 deployment config file
- screenshots/
- Dockerfile
- Makefile
- manage.py : django helper scripts
  