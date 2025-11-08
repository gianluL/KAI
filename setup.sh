#!/bin/bash

# initial update and installing dependencies
sudo apt update
sudo apt install python3 python3-venv python3-pip -y

# configuring the virtual environment - if you need it
# python3 -m venv venv
# source venv/bin/activate
# to deactivate the venv use "deactivate"

# install the dependencies on the environment
# for now only this one on  pythonAnywhere
pip3 install flask flask-cors python-dotenv requests python-telegram-bot python-telegram-bot[job-queue] --break-system-packages
# You don’t need to install: sqlite3, os, json, re, asyncio, or datetime — they’re built into Python.

./start.sh
