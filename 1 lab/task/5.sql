SELECT DISTINCT a.table_schema, a.table_name, b.constraint_type LIKE '%PRIMARY KEY' as has_key, b.constraint_type, count(a.table_name)
FROM information_schema.tables a
         JOIN information_schema.table_constraints b ON a.table_name = b.table_name AND b.constraint_type = 'PRIMARY KEY'
WHERE a.table_name NOT IN (SELECT table_name
                           FROM information_schema.table_constraints
                           WHERE table_schema = 'stud'
                             AND constraint_type = 'PRIMARY KEY')
group by a.table_name, a.table_schema, b.constraint_type;
-- kiekvienai lentelei:
-- schema,
-- pavadinima,
-- kiek is viso stulpelio,
-- turi rakta ar neturi,
-- kiek yra stulpeliu kuriu tipas yra skaicius