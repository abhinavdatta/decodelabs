-- Drop the table if it already exists
IF OBJECT_ID('dbo.Interns', 'U') IS NOT NULL
    DROP TABLE dbo.Interns;
GO

-- Create the Interns table
CREATE TABLE dbo.Interns (
    InternID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    PhoneNumber VARCHAR(15),
    InternshipRole VARCHAR(50),
    StartDate DATE
);
GO

-- Insert sample records
INSERT INTO dbo.Interns
(
    InternID,
    FirstName,
    LastName,
    Email,
    PhoneNumber,
    InternshipRole,
    StartDate
)
VALUES
(1, 'John', 'Doe', 'jdoe@decodelabs.com', '9876543210', 'Developer', '2026-06-01'),
(2, 'Jane', 'Smith', 'jsmith@decodelabs.com', '9123456780', 'Designer', '2026-06-05'),
(3, 'Conan', 'O''Leary', 'coleary@decodelabs.com', '9988776655', 'Tester', '2026-06-10');
GO

-- Display all interns
SELECT * FROM dbo.Interns;
GO

-- Count interns
SELECT COUNT(*) AS TotalInterns
FROM dbo.Interns;
GO

-- Find interns with the role 'Developer'
SELECT *
FROM dbo.Interns
WHERE InternshipRole = 'Developer';
GO

-- Order interns by start date
SELECT *
FROM dbo.Interns
ORDER BY StartDate;
GO