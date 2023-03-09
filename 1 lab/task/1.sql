SELECT DISTINCT vardas, pavarde
FROM stud.skaitytojas,
     stud.egzempliorius
WHERE stud.skaitytojas.nr = stud.egzempliorius.skaitytojas;
