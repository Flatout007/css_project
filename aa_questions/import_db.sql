PRAGMA foreign_keys = ON;


CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    fname VARCHAR(255) NOT NULL,
    lname VARCHAR(255) NOT NULL
);

INSERT INTO
  users (fname, lname)
VALUES
  ("mike", "jones"); 

CREATE TABLE questions(
    title VARCHAR(255) NOT NULL,
    body VARCHAR(255) NOT NULL,
    author_id INTEGER NOT NULL,
   /* FOREIGN KEY (author_id) REFERENCES users (id) */
);

INSERT INTO
  questions (title, body, author_id)
VALUES
  ("sport questions", "who won the super bowl", 1); 

/*CREATE TABLE question_follows(
    
);*/

CREATE TABLE replies(
    id INTEGER PRIMARY KEY,
    subject VARCHAR(255), 
    parent_reply VARCHAR(255), 
    user VARCHAR(255),
    body VARCHAR(255)
);



CREATE TABLE question_likes(
    like BOOLEAN,
    id INTEGER PRIMARY KEY,
    user_question VARCHAR(255)
);

/*
.databases
.dbinfo ?DB?
.fullschema ?--indent?
.indexes ?TABLE?
*/

 

SELECT 
   *
FROM
  questions;        