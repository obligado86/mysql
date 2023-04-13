USE blog_db;

INSERT INTO users(email, password, datetime_created) VALUES ("johnsmith@gmail.com", "passwordA", "2021-01-01 01:00:00");
INSERT INTO users(email, password, datetime_created) VALUES ("juandelacruz@gmail.com", "passwordB", "2021-01-01 02:00:00");
INSERT INTO users(email, password, datetime_created) VALUES ("janesmith@gmail.com", "passwordC", "2021-01-01 03:00:00");
INSERT INTO users(email, password, datetime_created) VALUES ("mariadelacruz@gmail.com", "passwordD", "2021-01-01 04:00:00");
INSERT INTO users(email, password, datetime_created) VALUES ("johndoe@gmail.com", "passwordE", "2021-01-01 05:00:00");

SELECT * FROM users;

INSERT INTO posts(author_id, title, content, datetime_posted) VALUES (1, "First Code", "Hello World!", "2021-01-02 01:00:00");
INSERT INTO posts(author_id, title, content, datetime_posted) VALUES (1, "Second Code", "Hello Earth!", "2021-01-02 02:00:00");
INSERT INTO posts(author_id, title, content, datetime_posted) VALUES (2, "Third Code", "Welcome to Mars!", "2021-01-02 03:00:00");
INSERT INTO posts(author_id, title, content, datetime_posted) VALUES (4, "Forth Code", "Bye bye solar system!", "2021-01-02 04:00:00");

SELECT * FROM posts;

SELECT * FROM posts WHERE author_id = 1;

SELECT email, datetime_created FROM users; 

UPDATE posts SET content = "Hello to the people of the Earth!" WHERE id = 2;

SELECT * FROM posts WHERE id = 2;

DELETE FROM users WHERE id = 5;

SELECT * FROM users;

