require 'bookmark'

describe Bookmark do 

  describe '#all' do

    it 'returns the bookmarks' do
      bookmarks = Array.new
      bookmarks.push("Bookmark 1")
      bookmarks.push("Bookmark 2")
      expect(subject.all).to eq bookmarks
    end

  end
  
end
