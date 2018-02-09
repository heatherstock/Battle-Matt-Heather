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

  def give_poison(player)
    player.poison_status
    switch_turns
  end

  def switch_turns
    @turn, @not_turn = @not_turn, @turn
    poison_randomiser
  end

  private

  def poison_randomiser
    @player_1.be_poisoned if @player_1.poison == true
    @player_2.be_poisoned if @player_2.poison == true
    @player_1.poison_off if rand(3) == 2
    @player_2.poison_off if rand(3) == 2
  end

end
