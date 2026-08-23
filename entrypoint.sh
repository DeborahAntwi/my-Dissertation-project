#!/bin/sh
python manage.py collectstatic --noinput 2>/dev/null
exec "$@"
