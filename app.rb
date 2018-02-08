require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base

  # enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1]), Player.new(params[:player_2]))
    redirect to('/play')
  end

  get '/play' do
    @game = $game
    # @player_1 = $game.player_1.name
    # @player_2 = $game.player_2.name
    erb(:play)
  end

  get '/attack' do
    @game = $game
    # @player_1 = $game.player_1.name
    # @player_2 = $game.player_2.name
    @game.attack(@game.not_turn)
    erb(:attack)
  end
end
