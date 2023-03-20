#!/bin/sh


# Run DB migrations.
python mange.py migrate --no-input

# Collect all static files.
python mange.py collectstatic --no-input


# RUN PROJECT
gunicorn dj_project.wsgi:application --bind 0.0.0.0:8000



