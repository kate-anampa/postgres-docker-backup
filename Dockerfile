# flask_app/Dockerfile
FROM postgres:15

ENV POSTGRES_DB=mi_db
ENV POSTGRES_USER=admin
ENV POSTGRES_PASSWORD=admin123

COPY init.sql /docker-entrypoint-initdb.d/