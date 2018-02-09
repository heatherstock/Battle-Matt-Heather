class Player

  attr_reader :name, :hp

  DEFAULT_HP = 100
  # DEFAULT_DAMAGE = rand(10)

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def take_damage
    @hp -= rand(10)
  end

  def be_poisoned
    @hp -= rand(5)
  end

end
