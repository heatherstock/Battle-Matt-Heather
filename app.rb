require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    @game = Game.create(Player.new(params[:player_1]), Player.new(params[:player_2]))
    redirect to('/play')
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @game.attack(@game.not_turn)
    erb(:attack)
  end

  post '/attack' do
    redirect '/play'
  end

  get '/heal' do
    @game.heal(@game.turn)
    erb(:heal)
  end

  post '/heal' do
    redirect '/play'
  end

  get '/poison' do
    @game.give_poison(@game.not_turn)
    erb(:poison)
  end

  post '/poison' do
    redirect '/play'
  end
end
