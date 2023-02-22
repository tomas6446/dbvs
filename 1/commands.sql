SELECT nr, vardas, pavarde
FROM stud.skaitytojas
WHERE nr IN (SELECT DISTINCT skaitytojas
             FROM stud.egzempliorius
             WHERE skaitytojas > 0);


SELECT a.nr, a.skaitytojas
            FROM stud.egzempliorius a
INNER JOIN stud.egzempliorius b ON a.nr = b.nr WHERE b.nr IN (SELECT b.nr
            FROM stud.egzempliorius b) AND a.skaitytojas > 0
