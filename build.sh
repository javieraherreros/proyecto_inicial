#!/usr/bin/env bash
# Salir inmediatamente si ocurre un error
set -o errexit

pip install -r requirements.txt

# Recopilar archivos estáticos
python manage.py collectstatic --no-input

# Aplicar migraciones a la base de datos
python manage.py migrate