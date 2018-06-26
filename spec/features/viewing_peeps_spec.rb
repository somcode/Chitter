require 'pg'
feature 'Viewing peeps' do
  scenario 'A user can see peeps' do
    Peep.create(mes: 'capybara feature test')
    Peep.create(mes: 'setting up database')
    visit('/')
    expect(page).to have_content 'capybara feature test'
    expect(page).to have_content 'setting up database'
  end
end
