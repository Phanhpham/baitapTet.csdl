use baitapTet;

CREATE TABLE Students_b15 (
    StudentID VARCHAR(10) PRIMARY KEY,
    FullName VARCHAR(100),
    Gender VARCHAR(10) 
);

INSERT INTO Students_b15 (StudentID, FullName, Gender) VALUES
('SV001', 'Nguyen Van An', 'Male'),
('SV002', 'Tran Thi Binh', 'Female'),
('SV003', 'Le Duy Phong', 'Male'),
('SV004', 'Pham Ngoc Ha', 'Female'),
('SV005', 'Hoang Minh Tam', 'Male'),
('SV006', 'Vu Thi Ngoc', 'Female');

SELECT StudentID, FullName, Gender
FROM Students_b15
WHERE Gender = 'Female' 
AND FullName LIKE '% N%';
