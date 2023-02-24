-- 1
SELECT DISTINCT vardas, pavarde
FROM stud.skaitytojas,
     stud.egzempliorius
WHERE stud.skaitytojas.nr = stud.egzempliorius.skaitytojas;

-- 2
SELECT s1.vardas, s1.pavarde, a.isbn, s2.vardas, s2.pavarde, b.isbn
FROM stud.egzempliorius a
         JOIN stud.egzempliorius b ON a.isbn = b.isbn
         JOIN stud.skaitytojas s1 ON s1.nr = a.skaitytojas
         JOIN stud.skaitytojas s2 ON s2.nr = b.skaitytojas
WHERE s1.vardas != s2.vardas
  AND s1.pavarde != s2.pavarde;

-- 3
SELECT DISTINCT a.metai, count(a.metai)
FROM stud.knyga a
GROUP BY a.metai;

-- 4
SELECT a.paimta, count(a.paimta)
FROM stud.egzempliorius a
GROUP BY a.paimta
HAVING count(a.paimta) > (SELECT avg(quantity)
                          FROM (SELECT a.paimta, count(a.paimta) as quantity
                                FROM stud.egzempliorius a
                                WHERE a.paimta IS NOT NULL
                                GROUP BY a.paimta) as counts);

-- 5
