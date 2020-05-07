# Wipes bookmark_manager database and sets up new one

\c bookmark_manager_test;

DROP DATABASE bookmark_manager;

CREATE DATABASE bookmark_manager;

\c bookmark_manager;

CREATE TABLE bookmarks (
	id SERIAL PRIMARY KEY,
	url VARCHAR(60)
);

INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');
INSERT INTO bookmarks (url) VALUES ('http://www.askjeeves.com');
INSERT INTO bookmarks (url) VALUES ('http://www.twitter.com');
INSERT INTO bookmarks (url) VALUES ('http://www.google.com');
DELETE FROM bookmarks WHERE url = 'http://www.twitter.com';
UPDATE bookmarks SET url = 'http://www.destroyallsoftware.com' WHERE url = 'http://www.askjeeves.com';

SELECT * FROM bookmarks;

# Wipes bookmark_manager_test database and sets up new one

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