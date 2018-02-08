class Game

  attr_reader :player_1, :player_2, :turn, :not_turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn = @player_1
    @not_turn = @player_2
  end

  def attack(player)
    player.take_damage
    @turn, @not_turn = @not_turn, @turn
  end
end
