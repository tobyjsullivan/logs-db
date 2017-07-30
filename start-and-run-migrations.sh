for i in 1 2 3 4 5 6
do
  pg_isready -h localhost -U postgres && \
  echo "Postgres ready. Migrating..." && \
  flyway -locations=filesystem:/sql -url=jdbc:postgresql://localhost:5432/postgres -user=postgres -password=$POSTGRES_PASSWORD migrate && \
  break
  echo "Postgres not ready"
  sleep 5
done &
docker-entrypoint.sh postgres 

