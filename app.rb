require 'sinatra/base'
require_relative 'lib/bookmark'

class BookmarkManager < Sinatra::Base
  get '/' do
    '<a href="/bookmarks">Bookmark Manager</a>'
  end

  get '/bookmarks' do
    
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  run! if app_file == $0
end
