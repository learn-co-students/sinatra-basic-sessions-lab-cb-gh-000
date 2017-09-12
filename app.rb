require_relative 'config/environment'

configure do
  enable :sessions
  set :session_secret, "S38Send"
end

class App < Sinatra::Base
	get '/' do
		erb :index
	end

	post '/checkout' do
		session[:item] = params[:item]
		"#{session[:item]}"
	end
end
