#!/usr/bin/env bash
#!/bin/bash

# Your existing code
...

# Activate the virtual environment
source $VIRTUAL/bin/activate

# Access the Python binary inside the virtual environment
python manage.py makemigrations

# Deactivate the virtual environment
deactivate

# Your existing code
...


set -e

PROJECT_BASE_PATH='/user/local/apps/profiles-rest-api'

git pull
$PROJECT_BASE_PATH/env/bin/python manage.py migrate
$PROJECT_BASE_PATH/env/bin/python manage.py collectstatic --noinput
supervisorctl restart profiles_api

echo "DONE! :)"
