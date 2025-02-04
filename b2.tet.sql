use baitapTet;

CREATE TABLE Student (
    StudentID VARCHAR(10) PRIMARY KEY,
    FullName VARCHAR(100),
    Gender VARCHAR(10),  
    BirthDate DATE
);

INSERT INTO Student (StudentID, FullName, Gender, BirthDate) VALUES
('SV001', 'Nguyen Van An', 'Male', '2002-05-10'),
('SV002', 'Tran Thi Binh', 'Female', '2001-08-15'),
('SV003', 'Le Duy Phong', 'Male', '2003-03-22'),
('SV004', 'Pham Ngoc Ha', 'Female', '2002-11-05');

SELECT StudentID, FullName, Gender, BirthDate
FROM Student	
ORDER BY 
    CASE 
        WHEN Gender = 'Male' THEN 1 
        WHEN Gender = 'Female' THEN 2 
    END;
