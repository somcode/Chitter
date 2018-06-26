require 'peep'
require 'pg'
describe Peep do
  describe '.all' do
    it 'return all peeps' do
      Peep.create(mes: 'capybara feature test')
      Peep.create(mes: 'setting up database')
      peeps = Peep.all
      expect(peeps).to include 'capybara feature test'
      expect(peeps).to include 'setting up database'
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      Peep.create(mes: 'Hello World!')
      expect(Peep.all).to include 'Hello World!'
    end
  end
end
