-- 1
SELECT DISTINCT vardas, pavarde
FROM stud.skaitytojas,
     stud.egzempliorius
WHERE stud.skaitytojas.nr = stud.egzempliorius.skaitytojas;

-- 2
SELECT s.vardas, s.pavarde, a.isbn, s2.vardas, s2.pavarde, b.isbn
FROM stud.egzempliorius a
         INNER JOIN stud.skaitytojas s
                    ON a.skaitytojas = s.nr
         INNER JOIN stud.egzempliorius b
                    ON a.isbn = b.isbn
                        AND a.skaitytojas > 0
                        AND b.skaitytojas > 0
                        AND a.skaitytojas != b.skaitytojas
         INNER JOIN stud.skaitytojas s2

-- 3
SELECT DISTINCT a.metai, count(a.metai)
FROM stud.knyga a
group by a.metai;


-- 4
SELECT nr, isbn, skaitytojas, paimta, grazinti
FROM stud.egzempliorius


