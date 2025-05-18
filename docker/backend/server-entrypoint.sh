#!/bin/sh


until cd /app/todo
do
    echo "Waiting for todo server volume>>>"
done


until python manage.py migrate
do
    echo "Waiting for db to e ready>>>"
    sleep 3
done



gunicorn todo.wsgi --bind 0.0.0.0:8000 --workers 4 --threads 4
