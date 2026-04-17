# EduSync
EduSync - School Management System (Database)
Description

EduSync est un système de gestion scolaire conçu pour centraliser et organiser les données d’un établissement. Il remplace les méthodes manuelles par une base de données relationnelle structurée et fiable.

Objectif

Créer une base de données normalisée permettant de gérer les utilisateurs, les classes, les cours et les inscriptions tout en assurant l’intégrité des données.

Structure de la base de données

Tables principales : roles, users, classes, courses, students, enrollments.

Relations
Un user appartient à un role (1:N)
Un student est lié à un user (1:1)
Une classe contient plusieurs students (1:N)
Un course est assigné à un teacher (1:N)
Un student peut suivre plusieurs courses (N:N via enrollments)
Technologies utilisées

MySQL, SQL (DDL & DML), Lucidchart (ERD), Jira, GitHub

Contenu du projet
structure.sql : création des tables
seed.sql : données de test
ERD : modélisation de la base
Contraintes

Clés primaires, clés étrangères, contraintes UNIQUE, relation many-to-many, intégrité référentielle.

Conclusion

Ce projet permet une gestion efficace des données scolaires grâce à une base de données bien structurée et normalisée.
