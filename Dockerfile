FROM ghost:5-alpine

# Copiar tema personalizado a ubicación temporal
COPY themes/bulletin /bulletin-theme

# Copiar script de entrada
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Usar el script como entrypoint
ENTRYPOINT ["/entrypoint.sh"]
CMD ["node", "current/index.js"]

EXPOSE 2368
