FROM postgres:latest 


ENV POSTGRES_DB=mi_db
ENV POSTGRES_USER=julian
ENV POSTGRES_PASSWORD=1234

COPY ./init-scripts/ /docker-entrypoint-initdb.d/

EXPOSE 5432
