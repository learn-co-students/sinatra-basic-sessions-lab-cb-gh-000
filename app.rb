require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    @session = session
    erb :index
  end

  get '/checkout' do
    params.each do |key, value|
        @session << {key => value}
      end
    erb :checkout
  end
end
