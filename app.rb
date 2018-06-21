require 'sinatra/base'
require './lib/peep'

class Chitter < Sinatra::Base
  get '/' do
    @peeps = Peep.all
    erb :index
  end

  get '/add-new-peep' do
    erb :new
  end

  post '/create-new-peep' do
    p "This is my new peep"
  end

  run! if app_file == $0
end
