class Player

  attr_reader :name, :hp, :poison

  DEFAULT_HP = 100
  # DEFAULT_DAMAGE = rand(10)

  def initialize(name, poison = false)
    @name = name
    @hp = DEFAULT_HP
    @poison = poison
  end

  def take_damage
    @hp -= rand(10)
  end

  def poison_status
    @poison = true
  end

  def be_poisoned
    @hp -= rand(5)
  end

  def poison_off
    @poison = false
  end

end
