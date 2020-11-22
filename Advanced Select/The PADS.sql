/*
1. Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
Example: 
Ashely(P)
Christeen(P)
Jane(A)
Jenny(D)
*/
SELECT CONCAT(Name,'(',CASE
    WHEN Occupation = 'Actor' THEN 'A'
    WHEN Occupation = 'Doctor' THEN 'D'
    WHEN Occupation = 'Singer' THEN 'S'
    WHEN Occupation = 'Professor' THEN 'P'
END,')') FROM OCCUPATIONS 
ORDER BY Name;

/*
2.Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:

There are a total of [occupation_count] [occupation]s.

where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name. If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.
*/

SELECT CONCAT('There are a total of ',COUNT(occupation),' ',LOWER(occupation),'s.')
FROM OCCUPATIONS
GROUP BY occupation
ORDER BY COUNT(occupation) ASC, occupation ASC
