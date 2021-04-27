CREATE TABLE user
(
    id INTEGER PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(20) NOT NULL
);
CREATE TABLE post
(
    id INTEGER PRIMARY KEY,
    title VARCHAR(15) NOT NULL ,
    text VARCHAR(300) NOT NULL,
    photo_url VARCHAR(100),
    likes INT NOT NULL default 0,
    created_at DATE NOT NULL ,
    modified_at DATE NOT NULL,
    _id INT NOT NULL,
    FOREIGN KEY (_id) REFERENCES user (id)
);
CREATE TABLE log
(
    id INTEGER PRIMARY KEY,
    error_message VARCHAR(50) NOT NULL default '',
    date_at date NOT NULL,
    error_code int NOT NULL
);
INSERT INTO user VALUES ('1','user1', 'u1', 'u1u');
INSERT INTO post VALUES ('1','Hi!', '1234', '1u','2','2001-1-1', '2021-2-2', '1');
INSERT INTO log VALUES ('1','e1','2021-1-1','1');
