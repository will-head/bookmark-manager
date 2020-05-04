require 'bookmark'

describe Bookmark do 

  describe '#all' do

    it 'returns all bookmarks' do
      expect(subject.all).to eq Bookmark::TEST_BOOKMARKS
    end

  end
  
end
