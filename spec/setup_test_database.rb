require 'pg'

p "Setting up test database..."

connection = PG.connect(dbname: 'bookmark_manager_test')

# Clear the bookmarks table
connection.exec("TRUNCATE bookmarks;")

# Add the test data
connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")