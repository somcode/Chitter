require 'peep'
 describe Peep do
   describe ".all" do
     it "return all peeps" do
       peeps = Peep.all
       expect(peeps).to include ("capybara feature test")
       expect(peeps).to include ("setting up database")
     end
   end
 end
