use baitapTet;

CREATE TABLE Subjects_b13 (
    SubjectID VARCHAR(10) PRIMARY KEY,
    SubjectName VARCHAR(100),
    NumberOfLessons INT
);


INSERT INTO Subjects_b13 (SubjectID, SubjectName, NumberOfLessons) VALUES
('MH001', 'Toán cao cấp', 50),
('MH002', 'Tiếng Anh', 40),
('MH003', 'Vật lý đại cương', 35),
('MH004', 'Triết học Mác-Lênin', 30),
('MH005', 'Tin học cơ bản', 42),
('MH006', 'Xác suất thống kê', 28);


SELECT SubjectID, SubjectName, NumberOfLessons
FROM Subjects_b13
WHERE NumberOfLessons > 30 AND NumberOfLessons < 45;
