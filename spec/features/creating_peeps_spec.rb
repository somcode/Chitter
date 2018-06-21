feature 'Adding a new peep' do
  scenario 'A user can add peeps to chitter' do
    visit ('/new')
    fill_in('peeps', with: 'This is my new peep')
    click_button('Submit')
    expect(page).to have_content 'This is my new peep'
  end
end
