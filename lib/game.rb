class Game

  attr_reader :player_1, :player_2, :turn, :not_turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn = @player_1
    @not_turn = @player_2
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def attack(player)
    player.take_damage
    switch_turns
  end

  def poison(player)
    player.be_poisoned
    switch_turns
  end

  def switch_turns
    @turn, @not_turn = @not_turn, @turn
  end
end
