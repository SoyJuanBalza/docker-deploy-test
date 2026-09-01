FROM nginx:1.27-alpine

# Sitio principal (juanbalza.com / www.juanbalza.com)
COPY website/ /usr/share/nginx/html/

# Landing "Vende lo que sabes", en /vende-lo-que-sabes/ (sin enlace desde el menú principal)
COPY vende-lo-que-sabes/ /usr/share/nginx/html/vende-lo-que-sabes/

# Config de nginx
COPY docker/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
    CMD wget -qO- http://127.0.0.1/ >/dev/null 2>&1 || exit 1

CMD ["nginx", "-g", "daemon off;"]
