#!/bin/bash
python /app/app/manage.py migrate
python /app/app/manage.py runserver 0.0.0.0:8012
