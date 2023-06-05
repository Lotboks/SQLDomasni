USE [master]
GO

DROP DATABASE IF EXISTS [SEDCACADEMYDB]
GO

CREATE DATABASE [SEDCACADEMYDB]
GO

USE [SEDCACADEMYDB]
GO

DROP TABLE IF EXISTS [dbo].[Students]
DROP TABLE IF EXISTS [dbo].[Teachers]
DROP TABLE IF EXISTS [dbo].[Grades]
DROP TABLE IF EXISTS [dbo].[Courses]
DROP TABLE IF EXISTS [dbo].[AchievementTypes]
DROP TABLE IF EXISTS [dbo].[GradeDetails]
GO

CREATE TABLE Students (
[Id] int IDENTITY(1,1) NOT NULL,
[FirstName] nvarchar(50) NOT NULL,
[LastName] nvarchar(50) NOT NULL,
[DateOfBirth] date NULL,
[EnrolledDate] date NOT NULL,
[Gender] nchar(1) NULL,	
[NationalIDNumber] nvarchar(20) NOT NULL,
[StudentCardNumber] nvarchar(20) NOT NULL,
CONSTRAINT [PK_Students] PRIMARY KEY(Id)
)
GO

CREATE TABLE Teacher (
[Id] int IDENTITY(1,1) NOT NULL,
[FirstName] nvarchar(50) NOT NULL,
[LastName] nvarchar(50) NOT NULL,
[DateOfBirth] date NULL,
[AcademicRank] int NULL,
[HireDate] date NOT NULL
CONSTRAINT [PK_Teacher] PRIMARY KEY(Id)
)
GO

CREATE TABLE Grades (
[Id] int IDENTITY(1,1) NOT NULL,
[StudentID] int NULL,
[CourseID] int NULL,
[TeacherID] int NULL,
[Grade] int NOT NULL,
[Comment] nvarchar(50) NULL,
[CreatedDate] date NOT NULL
CONSTRAINT [PK_Grade] PRIMARY KEY(Id)
)
GO

CREATE TABLE Courses (
[Id] int IDENTITY(1,1) NOT NULL,
[Name] nvarchar(100) NOT NULL,
[Credit] nvarchar(20) NOT NULL,
[AcademicYear] date NOT NULL,
[Semester] nvarchar(50) NOT NULL
CONSTRAINT [PK_Course] PRIMARY KEY(Id)
)
GO

CREATE TABLE GradeDetails (
[Id] int IDENTITY(1,1) NOT NULL,
[GradeID] int NULL,
[AchievementTypeID] int NULL,
[AchievementPoints] int NOT NULL,
[AchievementMaxPoints] int NULL,
[AchievementDate] date NOT NULL
CONSTRAINT [PK_GradeDetails] PRIMARY KEY(Id)
)
GO

CREATE TABLE AchievementType (
[Id] int IDENTITY(1,1) NOT NULL,
[Name] nvarchar(100) NOT NULL,
[Description] nvarchar(100) NULL,
[ParticipationRate] nvarchar(50) NULL
CONSTRAINT [PK_AchievementType] PRIMARY KEY	(Id)
)
GO
