feature 'Adding a new peep' do
  scenario 'A user can add peeps to chitter' do
    visit ('/add-new-peep')
    fill_in('peep', with: 'This is my new peep')
    click_button('Submit')
    expect(page).to have_content 'This is my new peep'
  end
end
