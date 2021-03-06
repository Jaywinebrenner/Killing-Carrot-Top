
class Enemy
  attr_accessor :name, :health, :damage
  def initialize (name, health, damage)
    @name = name
    @health = health
    @damage = damage
  end

  def do_damage(damage)
    @health -= @damage
  end

  def attack(target)
    @damage = damage
    target.do_damage(@damage)
  end

  def alive?
    @health > 0
  end
end
