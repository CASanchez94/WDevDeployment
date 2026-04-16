#!/usr/bin/env bash

set -o errexit

pip install -r requirements.txt

source ..virt/Scripts/activate

python manage.py collectstatic --no-input

python manage.py migrate

python manage.py createsuperuser --noinput || true
