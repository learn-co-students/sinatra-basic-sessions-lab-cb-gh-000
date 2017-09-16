require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/checkout' do
    item = params[:item]
    session["item"] = item

    # here we store session hash as instance variable
    # so that we can access it in views.
    @session = session
    erb :checkout
  end

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

end
