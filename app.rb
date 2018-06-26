require 'sinatra/base'
require './lib/peep'

class Chitter < Sinatra::Base
  get '/' do
    @peeps = Peep.all
    erb :index
  end

  get '/add-new-message' do
    erb :new
  end

  post '/' do
    Peep.create(mes: params['message'])
    redirect '/'
  end

  run! if app_file == $0
end
