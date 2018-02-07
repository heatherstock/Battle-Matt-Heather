class Player

  attr_reader :name
  attr_accessor :hitpoints

  def initialize(name, hitpoints = 100)
    @name = name
    @hitpoints = hitpoints
  end

  def attack(player)
    player.hitpoints -= 2
  end
end
