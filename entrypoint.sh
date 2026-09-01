#!/bin/sh

# Ensure local data directory exists for persistent SQLite database
mkdir -p /app/db_data

echo "Applying database migrations..."
python manage.py makemigrations accounts
python manage.py makemigrations
python manage.py migrate

echo "Collecting static files..."
python manage.py collectstatic --noinput || true

exec "$@"