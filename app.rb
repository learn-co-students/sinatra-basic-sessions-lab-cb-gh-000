require_relative 'config/environment'

configure do
  enable :sessions
  set :session_secret, "super secret session key of the ages"
end

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/checkout' do
    session[:item] = params[:item]
    @session = session

    "<h2>#{params[:item]}</h2>"
  end

end
