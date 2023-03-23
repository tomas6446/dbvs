SELECT a.paimta, count(a.paimta)
FROM stud.egzempliorius a
GROUP BY a.paimta
HAVING count(a.paimta) > (SELECT avg(quantity)
                          FROM (SELECT a.paimta, count(a.paimta) as quantity
                                FROM stud.egzempliorius a
                                WHERE a.paimta IS NOT NULL
                                GROUP BY a.paimta) as counts);

WITH counts AS (SELECT a.paimta, count(a.paimta) as quantity
                FROM stud.egzempliorius a
                WHERE a.paimta IS NOT NULL
                GROUP BY a.paimta),
     min_paimta AS (SELECT min(quantity) as minimum
                    FROM counts)
SELECT a.paimta, count(a.paimta)
FROM stud.egzempliorius a
         JOIN counts ON counts.paimta = a.paimta
GROUP BY a.paimta
HAVING count(a.paimta) > (SELECT avg(quantity) FROM counts)
    OR count(a.paimta) = (SELECT minimum FROM min_paimta);









