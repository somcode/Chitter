feature 'Viewing peeps' do
  scenario 'A user can see peeps' do
    visit('/')
    expect(page).to have_content "capybara feature test"
    expect(page).to have_content "setting up database"
  end
end
