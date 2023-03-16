SELECT s1.vardas, s1.pavarde, a.isbn, s2.vardas, s2.pavarde, b.isbn
FROM stud.egzempliorius a
         JOIN stud.egzempliorius b ON a.isbn = b.isbn
         JOIN stud.skaitytojas s1 ON s1.nr = a.skaitytojas
         JOIN stud.skaitytojas s2 ON s2.nr = b.skaitytojas
WHERE s1.vardas != s2.vardas
  AND s1.pavarde != s2.pavarde;


