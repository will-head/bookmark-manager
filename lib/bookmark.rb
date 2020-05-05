require 'pg'
class Bookmark
  # TEST_BOOKMARKS = ["http://www.makersacademy.com", "http://www.google.com", "http://www.destroyallsoftware.com"]
  # TEST_BOOKMARKS = ["", ""]  

  def self.all
    connection = PG.connect(dbname: 'bookmark_manager')
     result = connection.exec("SELECT * FROM bookmarks;")
     result.map {|bookmark| bookmark['url']}
  end
end
