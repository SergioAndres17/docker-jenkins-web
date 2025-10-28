# ---------- DOCKERFILE ----------
# Imagen base de Ubuntu estable
FROM ubuntu:24.04

# Mantenedor (puedes cambiar el nombre y correo)
LABEL maintainer="Luis Vargas <lanvargas@corhuila.edu.co>"

# Instalar nginx (servidor web)
RUN apt-get update && \
    apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/*

# Copiar archivos del sitio web
COPY web /var/www/html/

# Exponer puerto 80 (HTTP)
EXPOSE 80

# Iniciar nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]
# ---------- FIN DOCKERFILE ----------
