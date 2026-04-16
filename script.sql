-- Active: 1776333275695@@127.0.0.1@3306@school
CREATE DATABASE school;
USE school;
CREATE Table roles(
    id INT PRIMARY KEY AUTO_INCREMENT,
    label VARCHAR(55) UNIQUE NOT NULL
);
CREATE TABLE users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    fristname VARCHAR(255),
    lastname VARCHAR(255),
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role_id INT NOT NULL,
    FOREIGN KEY (role_id) REFERENCES roles(id)
);
CREATE Table classes(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    class_number VARCHAR(20) 
);

CREATE Table coursses(
    id INT PRIMARY KEY AUTO_INCREMENT,
    tittle VARCHAR(255) NOT NULL,
    description TEXT ,
    total_hours INT,
    user_id INT,
    FOREIGN KEY(user_id) REFERENCES users(id)
);

CREATE Table students(
id INT PRIMARY KEY AUTO_INCREMENT,
dateofbirth date NOT NULL,
student_number VARCHAR(255),
user_id INT NOT NULL,
Foreign Key (user_id) REFERENCES users(id),
class_id INT NOT NULL,
Foreign Key (class_id) REFERENCES classes(id)
);

CREATE Table enrollements(
    id INT PRIMARY KEY  AUTO_INCREMENT,
    enrolled_at DATE,
    status ENUM('activ','done'),
    student_id INT,
    cours_id INT,
    Foreign Key (student_id) REFERENCES students(id),
    Foreign Key (cours_id) REFERENCES coursses(id),
    UNIQUE(student_id,cours_id)

);

 