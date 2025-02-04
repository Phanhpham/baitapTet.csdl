use baitapTet;

CREATE TABLE Student_b3 (
    StudentID VARCHAR(10) PRIMARY KEY,
    FullName VARCHAR(100),
    BirthDate DATE,
    Scholarship DECIMAL(10,2)
);
INSERT INTO Student_b3 (StudentID, FullName, BirthDate, Scholarship) VALUES
('SV001', 'Nguyen Van An', '2002-05-10', 1500000),
('SV002', 'Tran Thi Binh', '2001-08-15', 2000000),
('SV003', 'Le Duy Phong', '2003-03-22', 1000000),
('SV004', 'Pham Ngoc Ha', '2002-05-10', 1800000),
('SV005', 'Hoang Minh Tam', '2001-08-15', 2200000);


SELECT FullName, BirthDate, Scholarship
FROM Student_b3
ORDER BY BirthDate ASC, Scholarship DESC;
