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
    p params
    mes = params['message']
    p mes
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter1_test')
    else
      connection = PG.connect(dbname: 'chitter1')
    end
    p connection
    p connection.exec("INSERT INTO peeps (message) VALUES('#{mes}')")
    redirect '/'
  end

  run! if app_file == $0
end
