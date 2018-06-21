require 'pg'
feature 'Viewing peeps' do
  scenario 'A user can see peeps' do
    connection = PG.connect(dbname: 'chitter1_test')
    # Add the test data
    connection.exec("INSERT INTO peeps VALUES(1, 'capybara feature test');")
    connection.exec("INSERT INTO peeps VALUES(2, 'setting up database');")
    visit('/')
    expect(page).to have_content 'capybara feature test'
    expect(page).to have_content 'setting up database'
  end
end
