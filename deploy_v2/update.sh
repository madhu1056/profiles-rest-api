#!/usr/bin/env bash

set -e

PROJECT_BASE_PATH='/user/local/apps/profiles-rest-api'

git pull
$PROJECT_BASE_PATH/env/bin/python manage.py makemigrations
$PROJECT_BASE_PATH/env/bin/python manage.py collectstatic --noinput
VIRTUALENV_BASE_PATH='/usr/local/virtualenvs'
supervisorctl restart profiles_api

echo "DONE! :)"
cd
