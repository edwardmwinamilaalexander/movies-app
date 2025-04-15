#!/bin/bash

echo "🔧 Running Django build steps..."

# Exit if any command fails
set -o errexit

# Apply database migrations
echo "📦 Applying migrations..."
python manage.py migrate 

# Collect static files
echo "🎒 Collecting static files..."
python manage.py collectstatic --noinput

echo "✅ Build complete!"
