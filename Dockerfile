FROM ghost:5-alpine

# Copiar tema personalizado al contenedor
COPY themes/bulletin /var/lib/ghost/content/themes/bulletin

# Copiar configuración si existe
COPY config.production.json /var/lib/ghost/config.production.json 2>/dev/null || true

# Establecer permisos
RUN chown -R node:node /var/lib/ghost/content/themes/bulletin

EXPOSE 2368
