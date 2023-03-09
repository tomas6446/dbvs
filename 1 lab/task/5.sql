SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'information_schema'
  AND table_type = 'BASE TABLE'
  AND NOT EXISTS(
        SELECT constraint_name
        FROM information_schema.table_constraints
        WHERE table_name = tables.table_name
          AND constraint_type = 'PRIMARY KEY'
    );
