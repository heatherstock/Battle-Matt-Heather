class Player

  attr_reader :name, :hp

  DEFAULT_HP = 100
  DEFAULT_DAMAGE = 10

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def take_damage
    @hp -= DEFAULT_DAMAGE
  end
end
