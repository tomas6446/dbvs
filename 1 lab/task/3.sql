SELECT DISTINCT a.metai, count(a.metai)
FROM stud.knyga a
GROUP BY a.metai;