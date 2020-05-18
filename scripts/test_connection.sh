#!/bin/bash

echo "Starting database ..."
until pg_isready -q -h $DB_HOST -p $DB_PORT -U $POSTGRES_USER; do
    printf '.' ; \
    sleep 2 ; \
done
printf "%s\n" " "
echo "Available at ${PG_URI}"