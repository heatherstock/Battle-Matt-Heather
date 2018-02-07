require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1] = params[:player_1] if params.has_key?(:player_1)
    session[:player_2] = params[:player_2] if params.has_key?(:player_2)
    redirect to('/names')
  end

  get '/names' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb(:names)
  end
end
