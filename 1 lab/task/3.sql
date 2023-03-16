SELECT DISTINCT a.metai, count(a.metai)
FROM stud.knyga a
GROUP BY a.metai;

SELECT DISTINCT a.metai as metai, count(DISTINCT b.pavarde) as autoriu
FROM stud.autorius b, stud.knyga a
WHERE a.isbn = b.isbn
GROUP BY metai;

