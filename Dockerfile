FROM php:8.2-cli
WORKDIR /app-php
ARG PORT=8000
ENV PORT=${PORT}
COPY . .
EXPOSE ${PORT}
ENTRYPOINT ["php", "-S", "0.0.0.0:8000", "-t", "/app-php"]