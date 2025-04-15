#!/bin/bash
set -e

echo "📦 Installing Python dependencies..."
pip install -r requirements.txt

echo "🧱 Running Django build steps..."
python manage.py migrate
python manage.py collectstatic --noinput
