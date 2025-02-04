use baitapTet;

CREATE TABLE Subjects (
    SubjectID VARCHAR(10) PRIMARY KEY,
    SubjectName VARCHAR(100),
    NumberOfLessons INT
);
INSERT INTO Subjects (SubjectID, SubjectName, NumberOfLessons) VALUES
('MH001', 'Toán cao cấp', 45),
('MH002', 'Tiếng Anh', 60),
('MH003', 'Vật lý đại cương', 50),
('MH004', 'Triết học Mác-Lênin', 30),
('MH005', 'Tin học cơ bản', 45),
('MH006', 'Xác suất thống kê', 40);

SELECT SubjectID, SubjectName, NumberOfLessons
FROM Subjects
WHERE SubjectName LIKE 'T%';
