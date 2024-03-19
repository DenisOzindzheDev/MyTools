#!/bin/bash
docker run -d -p 3000:3000 \
  -e "MB_DB_TYPE=postgres" \
  -e "MB_DB_DBNAME=debug" \
  -e "MB_DB_PORT=5432" \
  -e "MB_DB_USER=user" \
  -e "MB_DB_PASS=password" \
  -e "MB_DB_HOST=localhost" \
   --name metabase metabase/metabase