#!/bin/sh
# Script de inicialización para asegurar que el tema está actualizado

# Copiar tema si no existe o actualizar si existe
if [ -d "/var/lib/ghost/current/content/themes/bulletin" ]; then
    echo "Actualizando tema bulletin..."
    cp -r /var/lib/ghost/current/content/themes/bulletin/* /var/lib/ghost/content/themes/bulletin/ 2>/dev/null || mkdir -p /var/lib/ghost/content/themes/bulletin
else
    echo "Instalando tema bulletin..."
    mkdir -p /var/lib/ghost/content/themes/bulletin
fi

# Copiar archivos específicos del tema desde la imagen
cp -r /bulletin-theme/* /var/lib/ghost/content/themes/bulletin/ 2>/dev/null || true

# Asegurar permisos correctos
chown -R node:node /var/lib/ghost/content/themes/bulletin

# Ejecutar Ghost normalmente
exec "$@"
