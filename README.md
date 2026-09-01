# juanbalza.com — despliegue Docker

Sitio principal (`website/`) servido en la raíz del dominio, y la landing
"Vende lo que sabes" (`vende-lo-que-sabes/`) servida en `/vende-lo-que-sabes/`,
sin enlace desde la navegación del sitio principal.

Build vía Dockerfile (nginx + configuración custom en `docker/nginx.conf`).
Desplegado automáticamente por Coolify en cada push a `main`.
