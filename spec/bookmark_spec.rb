require 'bookmark'

describe Bookmark do 
  describe '.all' do
    it 'returns a list of bookmarks' do
      expect(Bookmark.all).to include("http://www.makersacademy.com")
      expect(Bookmark.all).to include("http://www.destroyallsoftware.com")
      expect(Bookmark.all).to include("http://www.google.com")
    end
  end

  describe '.add(url)' do
    it 'adds bookmark' do
      Bookmark.add("http://howtomobilephoto.com")
      expect(Bookmark.all).to include("http://www.makersacademy.com")
      expect(Bookmark.all).to include("http://www.destroyallsoftware.com")
      expect(Bookmark.all).to include("http://www.google.com")
      expect(Bookmark.all).to include("http://howtomobilephoto.com")
    end
  end
  
end

