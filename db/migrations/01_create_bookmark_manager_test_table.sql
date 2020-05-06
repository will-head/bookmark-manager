\c bookmark_manager;

DROP DATABASE bookmark_manager_test;

CREATE DATABASE bookmark_manager_test;

\c bookmark_manager_test;

DROP TABLE bookmarks;

CREATE TABLE bookmarks (
	id SERIAL PRIMARY KEY,
	url VARCHAR(60)
);

SELECT * FROM bookmarks;




-- INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');
-- INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com');
-- INSERT INTO bookmarks (url) VALUES ('http://www.google.com');


