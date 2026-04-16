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
