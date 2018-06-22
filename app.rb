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
    mes = params['message']
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter1_test')
    else
      connection = PG.connect(dbname: 'chitter1')
    end
    connection.exec("INSERT INTO peeps (message) VALUES('#{mes}')")
    redirect '/'
  end

  run! if app_file == $0
end
