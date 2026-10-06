-- CREATE TABLE Course (course_id INT PRIMARY KEY AUTO_INCREMENT,course_name VARCHAR(100) NOT NULL UNIQUE,duration VARCHAR(50),fee DECIMAL(10,2));
-- CREATE TABLE Student (student_id INT PRIMARY KEY AUTO_INCREMENT,student_name VARCHAR(100) NOT NULL,email VARCHAR(100) UNIQUE,age INT,gender VARCHAR(20),mark DECIMAL(5,2),course_id INT,FOREIGN KEY (course_id) REFERENCES Course(course_id));

-- INSERT INTO Course (course_name, duration, fee)VALUES('Python Full Stack', '6 Months', 30000),('Data Science', '8 Months', 45000),('Java Full Stack', '6 Months', 35000),('Web Development', '4 Months', 25000);4

-- INSERT INTO Student (student_name, email, age, gender, mark, course_id)VALUES('Arun', 'arun@gmail.com', 22, 'Male', 92, 1),('Anu', 'anu@gmail.com', 21, 'Female', 85, 1),('Rahul', 'rahul@gmail.com', 24, 'Male', 78, 2),('Meera', 'meera@gmail.com', 20, 'Female', 95, 2),('Vishnu', 'vishnu@gmail.com', 23, 'Male', 88, 1),('Diya', 'diya@gmail.com', 19, 'Female', 72, 3),('Akhil', 'akhil@gmail.com', 25, 'Male', 81, 3),('Neha', 'neha@gmail.com', 22, 'Female', 90, 1),('Sona', 'sona@gmail.com', 26, 'Female', 67, 4),('Nikhil', 'nikhil@gmail.com', 18, 'Male', 76, 3);

-- SELECT *FROM Student WHERE mark > 80 ORDER BY mark DESC;
-- SELECT MAX(mark) AS highest_mark, MIN(mark) AS lowest_mark, AVG(mark) AS average_mark FROM Student;

-- SELECT *FROM Student ORDER BY mark DESC LIMIT 5;

-- SELECT student_name, mark, age FROM Student WHERE age BETWEEN 18 AND 25 ORDER BY age;

-- SELECT course_id,COUNT(student_id) AS student_count FROM Student GROUP BY course_id;

-- SELECT c.course_name,COUNT(s.student_id) AS student_count FROM Course c LEFT JOIN Student s ON c.course_id = s.course_id GROUP BY c.course_id, c.course_name;

-- SELECT c.course_name, COUNT(s.student_id) AS student_countFROM Course c JOIN Student s ON c.course_id = s.course_id GROUP BY c.course_id, c.course_name HAVING COUNT(s.student_id) > 2;


-- SELECT s.student_name,s.mark,c.course_name FROM Student s INNER JOIN Course c ON s.course_id = c.course_id;

-- SELECT c.course_name, s.student_name,  s.mark  FROM Course c LEFT JOIN Student s ON c.course_id = s.course_id;

-- SELECT student_name, mark FROM Student WHERE mark > (  SELECT AVG(mark) FROM Student );

-- SELECT s.student_name, s.mark, c.course_name FROM Student s INNER JOIN Course c ON s.course_id = c.course_id WHERE s.mark = (SELECT MAX(mark) FROM Student  WHERE mark < (SELECT MAX(mark)FROM Student));