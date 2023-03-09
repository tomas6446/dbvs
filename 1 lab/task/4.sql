SELECT a.paimta, count(a.paimta)
FROM stud.egzempliorius a
GROUP BY a.paimta
HAVING count(a.paimta) > (SELECT avg(quantity)
                          FROM (SELECT a.paimta, count(a.paimta) as quantity
                                FROM stud.egzempliorius a
                                WHERE a.paimta IS NOT NULL
                                GROUP BY a.paimta) as counts);