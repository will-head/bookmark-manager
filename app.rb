require 'sinatra/base'
require_relative 'lib/bookmark'

class BookmarkManager < Sinatra::Base
  get '/' do
    "<a href='/bookmarks'>Bookmark Manager</a><br>" + \
    "<a href='/add_bookmark'>Add bookmark</a>"
  end

  get '/bookmarks' do
    
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  get '/add_bookmark' do
    "<form action='/add_bookmark' method='post'>" + \
    "  <input type='text' name='url'>" + \
    "  <input type='submit' value='Add Bookmark' name='commit'>" + \
    "</form>"
  end

  post '/add_bookmark' do
    Bookmark.add(params[:url])
    redirect to('bookmarks')
  end

  run! if app_file == $0
end
