feature 'Adding a URL as a message' do
  scenario 'If the message is URL must be a valid URL' do
    visit ('/add-new-message')
    fill_in('message', with: 'not a real URL')
    expect(page).not-to have_content 'not a real URL'
    expect(page).to have_content 'You must submit a valid URL.'
  end
end
