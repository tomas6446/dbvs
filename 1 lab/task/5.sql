SELECT a.table_schema, a.table_name
FROM information_schema.tables a
WHERE a.table_name NOT IN (SELECT table_name
                           FROM information_schema.table_constraints
                           WHERE table_schema = 'stud'
                             AND constraint_type = 'PRIMARY KEY')
group by a.table_name, a.table_schema;

-- kiekvienai lentelei:
-- schema,
-- pavadinima,
-- kiek is viso stulpelio,
-- turi rakta ar neturi,
-- kiek yra stulpeliu kuriu tipas yra skaicius