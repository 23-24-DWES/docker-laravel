#!/bin/bash

# Verifica si el directorio /vendor existe
if [ ! -d "./vendor" ]; then
    echo "Ejecutando composer install."
    composer install
    # Verifica si APP_KEY está vacío
    if [ -z "$APP_KEY" ]; then
        echo "Ejecutando php artisan key:generate."
        php artisan key:generate
    fi
fi