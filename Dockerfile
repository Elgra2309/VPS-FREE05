FROM teddysun/v2ray:latest

# Copiar la configuración personalizada
COPY config.json /etc/v2ray/config.json

# Exponer el puerto 8080 que Cloud Run usa internamente
EXPOSE 8080

# Ejecutar v2ray con la configuración
CMD ["v2ray", "run", "-config=/etc/v2ray/config.json"]
