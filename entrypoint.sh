#!/bin/bash

# Verifica si el directorio /vendor existe
if [ ! -d "./vendor/laravel" ]; then
    composer install
fi

# Verifica si APP_KEY está vacío
if [ -z "$APP_KEY" ]; then
    php artisan key:generate
fi

# Ejecuta el comando para iniciar la aplicación
exec "$@"
