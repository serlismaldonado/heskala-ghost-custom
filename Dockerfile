FROM ghost:5-alpine

# Copiar tema personalizado al contenedor
COPY themes/bulletin /var/lib/ghost/content/themes/bulletin

# Establecer permisos
RUN chown -R node:node /var/lib/ghost/content/themes/bulletin

EXPOSE 2368
