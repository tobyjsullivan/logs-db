sleep 5 && \
flyway -locations=filesystem:/sql -url=jdbc:postgresql://localhost:5432/postgres -user=postgres -password=$POSTGRES_PASSWORD migrate &
docker-entrypoint.sh postgres 

