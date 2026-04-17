USE school;


INSERT INTO roles(label)
VALUES('admin'),('prof'),('student');

INSERT INTO users(fristname,lastname,email,password,role_id)
VALUES('samira','assemlali','samiraassemlali@gmail.com',SHA2("samiraaa",255),1),
('anis','assemlali','assemlali@gmail.com',SHA2("samiraa",255),2),
('salma','assemlali','salmaassemlali@gmail.com',SHA2("samiraa",255),2),
('ali','assemlali','anisassemlali@gmail.com',SHA2("samiraa",255),3),
('amin','assemlali','semlali@gmail.com',SHA2("samira",255),3),
('ibrahim','assemlali','semlali@gmail.com',SHA2("samira",255),3),
('sara','assemlali','semlali@gmail.com',SHA2("samira",255),3);


INSERT INTO classes(name,class_number)
VALUES('webwezard','A1');

INSERT INTO students(dateofbirth,student_number,user_id,class_id)
VALUES('2003-01-01','L21000771',2,1);

INSERT INTO coursses (tittle, description, total_hours, user_id)
VALUES ('php', 'full', 18, 1);

INSERT INTO enrollements (enrolled_at, status, student_id, cours_id)
VALUES ('2026-04-01', ' actif', 1, 1);

SELECT * from students;
SELECT * from enrollements;
SELECT * from coursses;

SELECT 
    students.id,
    students.student_number,
    coursses.tittle
FROM students
JOIN enrollements ON students.id = enrollements.student_id
JOIN coursses ON coursses.id = enrollements.cours_id;


SELECT 
    students.student_number,
    classes.name AS class_name,
    coursses.tittle,
    users.fristname AS teacher_name
FROM students
JOIN classes ON students.class_id = classes.id
JOIN enrollements ON students.id = enrollements.student_id
JOIN coursses ON coursses.id = enrollements.cours_id
JOIN users ON coursses.user_id = users.id;


SELECT 
    coursses.tittle,
    users.fristname
FROM coursses
JOIN users ON coursses.user_id = users.id;


SELECT 
    students.student_number,
    classes.name
FROM students
JOIN classes ON students.class_id = classes.id;


SELECT 
    coursses.tittle,
    COUNT(enrollements.student_id) AS total_students
FROM coursses
JOIN enrollements ON coursses.id = enrollements.cours_id
GROUP BY coursses.tittle;


SELECT 
    students.student_number,
    coursses.tittle,
    enrollements.status
FROM students
JOIN enrollements ON students.id = enrollements.student_id
JOIN coursses ON coursses.id = enrollements.cours_id;