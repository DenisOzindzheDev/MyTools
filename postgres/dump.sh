#!/bin/bash
TARGET_DB=debug
TARGET_HOST=localhost
TARGET_PORT=5432
TARGET_USER=user
TARGET_PASSWORD=password
DUMP_FILE=dump-audit-metabase

echo "Restoring database..."
PGPASSWORD="$TARGET_PASSWORD" pg_restore -v -h  "$TARGET_HOST" -p "$TARGET_PORT" -U "$TARGET_USER" --no-owner --clean --role="$TARGET_USER" -d "$TARGET_DB" $DUMP_FILE
echo "Database dumped and restored successfully!"
