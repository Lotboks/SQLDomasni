SELECT Teacher, COUNT(*) AS GradesPerTeacher
FROM Grades
GROUP BY Teacher
GO

SELECT Teacher, COUNT(*) AS GradesPerTeacher
FROM Grades
WHERE StudentId < 100
GROUP BY Teacher
GO

SELECT StudentId, MAX(Grade) AS MaxGradePerStudent, AVG(Grade) AS AvgGradePerStudent
FROM Grades
GROUP BY StudentId
GO

SELECT Teacher, COUNT(*) AS GradeCountPerTeacher
FROM Grades
GROUP BY Teacher
HAVING COUNT(*) > 200
GO

SELECT StudentId, COUNT(*) AS GradeCount, MAX(Grade) AS MaxGradeCount, AVG(Grade) AS AvgGrade
FROM Grades
GROUP BY StudentId
HAVING MAX(Grade) = AVG(Grade)
GO

SELECT s.FirstName, s.LastName, g.StudentId, g.GradeCount, g.MaxGrade, g.AvgGrade
FROM dbo.Grades g
JOIN dbo.Students s ON g.StudentID = s.StudentId;
GO

CREATE VIEW vv_StudentGrades AS
SELECT StudentId, COUNT(*) AS GradeCount
FROM Grades
GROUP BY StudentId
GO

CREATE OR REPLACE VIEW vv_StudentGrades AS
SELECT s.FirstName, s.LastName, COUNT(*) AS GradeCount
FROM dbo.Grades g
JOIN dbo.Students s ON g.StudentId = s.StudentId
GROUP BY g.StudentId, s.FirstName, s.LastName;
GO

SELECT * FROM vv_StudentGrades
ORDER BY GradeCount
GO