use baitapTet;

CREATE TABLE Students_b29 (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    BirthYear INT,
    Age INT,
    Address VARCHAR(100)
);

INSERT INTO Students_b29 (Name, BirthYear, Age, Address) VALUES 
('John Doe', 2000, 25, 'New York'),
('Jane Smith', 2001, 24, 'Los Angeles'),
('Alice Johnson', 2000, 25, 'Chicago'),
('Bob Brown', 2002, 23, 'New York'),
('Charlie Davis', 2003, 22, 'Los Angeles'),
('Emily Wilson', 2001, 24, 'Chicago'),
('David Harris', 2003, 22, 'Houston'),
('Sophia White', 2002, 23, 'Houston'),
('Michael Green', 2000, 25, 'New York');


SELECT Age, COUNT(*) AS StudentCount
FROM Students_b29
GROUP BY Age;

SELECT BirthYear
FROM Students_b29
GROUP BY BirthYear
HAVING COUNT(*) = 2;

SELECT Address, COUNT(*) AS StudentCount
FROM Students_b29
GROUP BY Address
HAVING COUNT(*) > 2;


CREATE TABLE Exams_29 (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Subject VARCHAR(50),
    StudentID INT,
    FOREIGN KEY (StudentID) REFERENCES Students_b29(ID)
);

INSERT INTO Exams_b29 (Subject, StudentID) VALUES
('Mathematics', 1),
('Mathematics', 2),
('Mathematics', 3),
('Mathematics', 4),
('Physics', 5),
('Physics', 6),
('Physics', 7),
('Chemistry', 8),
('Chemistry', 9),
('Chemistry', 1),
('Chemistry', 2);

SELECT Subject, COUNT(*) AS StudentCount
FROM Exams
GROUP BY Subject
HAVING COUNT(*) > 3;
