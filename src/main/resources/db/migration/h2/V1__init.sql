CREATE TABLE IF NOT EXISTS student
(
   id BIGINT GENERATED BY DEFAULT AS IDENTITY,
   student_name VARCHAR(255) NOT NULL,
   passport_number VARCHAR(255) NOT NULL,
   PRIMARY KEY(id)
);

show databases;