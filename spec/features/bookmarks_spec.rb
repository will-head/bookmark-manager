feature '/bookmarks' do
  
  scenario 'shows bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content 'Bookmarks'
  end

end
