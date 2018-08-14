require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :session
    set :session_secret, "Some Secret!!!"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @session = session
    @session[:item] = params[:item]
    "#{@session}"
  end

end
