


class Player
  attr_accessor :name, :health, :damage
  def initialize (name, health, damage)
    @name = name
    @health = health
    @damage = damage
  end

  # def to_s
  #   puts "#{name}, the Comedian Slayer. Health: #{health}, Attack Damage: #{power}"
  # end

  def do_damage(damage)
    @health -= @damage
  end

  def attack(target)
    @damage = 5
    target.do_damage(@damage)
  end

  def dead?
    @health <= 0
  end
end

# make this a method of the player class?
