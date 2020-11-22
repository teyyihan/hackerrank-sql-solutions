SELECT (CASE WHEN Students.Marks >= 70 THEN Name END), Grades.Grade, Students.Marks
FROM Students
INNER JOIN Grades ON Students.Marks BETWEEN Grades.Min_Mark AND Grades.Max_Mark
ORDER BY Grades.Grade DESC, Name