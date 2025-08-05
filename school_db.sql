CREATE SCHEMA school_db;


CREATE TABLE Groups (
    group_id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);


CREATE TABLE Students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    group_id INTEGER REFERENCES Groups(group_id)
);


CREATE TABLE Subjects (
    subject_id SERIAL PRIMARY KEY,
    title VARCHAR(100)
);


CREATE TABLE Teachers (
    teacher_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);


CREATE TABLE Subject_teacher (
    subject_id INTEGER REFERENCES Subjects(subject_id),
    teacher_id INTEGER REFERENCES Teachers(teacher_id),
    group_id INTEGER REFERENCES Groups(group_id),
    PRIMARY KEY (subject_id, teacher_id, group_id)
);


CREATE TABLE Marks (
    mark_id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES Students(student_id),
    subject_id INTEGER REFERENCES Subjects(subject_id),
    date TIMESTAMP,
    mark INTEGER
);