use baitapTet;

CREATE TABLE Students_b19 (
    StudentID VARCHAR(10) PRIMARY KEY,
    FullName VARCHAR(100),
    Gender VARCHAR(10), 
    BirthDate DATE
);

INSERT INTO Students_b19 (StudentID, FullName, Gender, BirthDate) VALUES
('SV001', 'Nguyen Van An', 'Male', '1990-02-10'),
('SV002', 'Tran Thi Binh', 'Female', '1990-04-15'),
('SV003', 'Le Duy Phong', 'Male', '1990-03-22'),
('SV004', 'Pham Ngoc Ha', 'Female', '1990-01-05'),
('SV005', 'Hoang Minh Tam', 'Male', '1990-07-18'),
('SV006', 'Vu Quoc Hoi', 'Male', '1989-09-20');

SELECT FullName, Gender, BirthDate
FROM Students_b19
WHERE YEAR(BirthDate) = 1990
AND MONTH(BirthDate) BETWEEN 1 AND 3;


