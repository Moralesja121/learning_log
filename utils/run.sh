#!/bin/sh

python manage.py collectstatic --noinput
python manage.py migrate
gunicorn learning_log.wsgi --bind=0.0.0.0:80

