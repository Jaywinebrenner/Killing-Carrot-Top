class Player

  def initialize (name, health, damage)
    @name = name
    @health = health
    @damage = damage
  end

  def do_damage(damage)
    # @damage = 5
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
player = Player.new("Fart", 10, 2)


class Enemy
  def initialize (name, health, damage)
    @name = name
    @health = health
    @damage = damage
  end

  def do_damage(damage)
    # @damage = 5
    @health -= @damage
  end

  def attack(target)
    @damage = 5
    target.do_damage(@damage)
    # @health -= @damage
  end

  def dead?
    @health <= 0
  end
end
gallagher = Enemy.new("Gallagher", 10, 2)
gallagher.attack(player)

# if player.dead?
#   puts "You died miserably."
# end

class NewGame
	def self.initialize
    puts ""
		puts "Spawned from the fetid and pestulent comedy clubs from the dark edges of civilization, you embark on your journey to exact revenge upon this foul world from which you suffered so."
    puts ""
    puts "Your singular journey is to infiltrate the elite comedy circuit of the Illuimiati of Laughter- a sinisiter coalition of comedians hell bend on world dominance."
    puts ""
    puts "You must assassinate the Ultimate Comedy Beast, Lord of Laughter, King of Chuckles, the Baron of Belly Busting, Carrot Top himself. It will be a perilous journey filled with violence, mayhem, depravity and sinister laughs."
    puts ""
    puts ""
		puts "What is your name, chosen one?"
      puts ""
		user_input_name = gets.chomp
		puts "We wish you the best of luck as you sink deeper within the quagmire of comedy, " + user_input_name
	end
end
NewGame.initialize

# goblin = Enemy.new("goblin")
# player.do_damage(@random)


#
# class Dog
#
#   def attack(target)
#     damage = rand(ATTACK_DAMAGE_MIN..ATTACK_DAMAGE_MAX)
#     target.do_damage(damage)
#   end
# end
#
#
#
#
# class Enemy
#   def initialize(name, health, damage)
#     @name = name
#     @health = health
#     @damage = damage
#   end
#
#   def damage(damage)
#     @health -= damage
#   end
#
#   def dead?
#     @health <= 0
#   end
#
#   def attack(target)
#     damage = rand(ATTACK_DAMAGE_MIN..ATTACK_DAMAGE_MAX)
#     target.do_damage(damage)
#   end
# end
# goblin = Enemy.new("Goblin", rand(1..4), rand(1..3))
# goblin.damage(20)
#
# if goblin.dead?
#   puts "RIP Goblin"
# end
#
#
# goblin.attack(hero)
#
# if player.dead?
#   puts "You died!"
# else
#   puts "You survived!"
# end
