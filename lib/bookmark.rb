require 'pg'
class Bookmark
  # TEST_BOOKMARKS = ["http://www.makersacademy.com", "http://www.google.com", "http://www.destroyallsoftware.com"]
  # TEST_BOOKMARKS = ["", ""]  

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    result = connection.exec("SELECT * FROM bookmarks;")
    result.map {|bookmark| bookmark['url']}
  end

  def self.add(url)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    result = connection.exec(" \ 
      INSERT INTO bookmarks (url) VALUES ('#{url}'); \
      ") 
  end
end


