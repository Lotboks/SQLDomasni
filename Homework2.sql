SELECT * FROM Students
WHERE FirstName = 'Antonio'
GO

SELECT * FROM Students
WHERE DateOfBirth > '01-01-1999'
GO

SELECT * FROM Students
WHERE LastName LIKE 'J%'
AND dbo.EnrollmentDate >= '01-01-1998'
AND dbo.EnrollmentDate < '02-01-1998'
GO

SELECT * FROM Students
ORDER BY FirstName
GO

SELECT LastName
FROM Teachers
UNION
SELECT LastName
FROM Students
GO

CREATE TABLE Pizzas (
[Id] int IDENTITY(1,1) NOT NULL,
[PizzaId] int NOT NULL,
[PizzaName] nvarchar(255) NOT NULL,
CONSTRAINT [PK_Pizzas] PRIMARY KEY(PizzaId)
)

CREATE TABLE PizzaType (
[Id] int IDENTITY(1,1) NOT NULL,
[PizzaType] nvarchar(255) NOT NULL,
[PizzaId] int NOT NULL,
FOREIGN KEY (PizzaId) REFERENCES Pizzas(PizzaId)
)
GO

SELECT Courses.CourseName, Grades.AchievementType
FROM Student, Courses, Grades
WHERE dbo.AchievementType = 'Passed'
AND dbo.CourseId = dbo.CourseId;
GO

SELECT * FROM Teachers
LEFT JOIN ExamGrades ON dbo.TeacherId = dbo.TeacherId
WHERE dbo.TeacherId IS NULL
GO