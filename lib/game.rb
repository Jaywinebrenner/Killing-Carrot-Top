class NewGame
  def self.initialize
    puts ""
    puts "Spawned from the fetid and pestulent comedy clubs from the dark edges of civilization, you embark on your journey to exact revenge upon this foul world from which you suffered so."
    puts ""
    puts "Your singular journey is to infiltrate the elite comedy circuit of the Illuimiati of Laughter- a sinisiter coalition of comedians hell bent on the vile enslavement of the human race and world dominance."
    puts ""
    puts "You must assassinate the Ultimate Comedy Beast, Lord of Laughter, King of Chuckles, the Baron of Belly Busting Carrot Top himself. It will be a perilous journey filled with violence, mayhem, depravity and suffering."
    puts ""
    puts ""
    puts "What is your name, chosen one?"
    puts ""
    user_input_name = gets.chomp
    puts "We wish you the best of luck as you sink deeper within the quagmire of comedy, " + user_input_name
  end
end


class Player
  attr_accessor :name, :health, :damage
  def initialize (name, health, damage)
    @name = name
    @health = health
    @damage = damage
  end

  def to_s
    puts "#{name}, the Comedian Slayer. Health: #{health}, Attack Damage: #{power}"
  end

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

def players_died
  if dead? == true
    dead_messages = ["You fall down, blood gurgling out of your sinuses... your vision goes black. You have died.", "You emit a horrifying shreik and crumple to the ground. You have died.", "Your hear a strange crushing sound, like eating cereal. You feel your eyes liquifying and your innards spill onto the ground. You have died.", "A sharp pain shoots through your neck as a thick stream of blood squirts on the floor. Your Carotid artry has been severed. You have died.", "In an unusual moment of clarity in the heat of battle, times slows to a halt. Shrek lumbers into your field of vision. 'I am real' he says and you have died."]
    puts dead_messages.sample
    puts ""
    puts "Your quest to slay Carrot Top, Lord of Laughter has failed."
  end
end



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
    @damage = 5
    target.do_damage(@damage)
  end

  def dead?
    @health <= 0
  end
end




class Battle

  def player_attack
      puts "the player attacks"
  end

  def enemy_attack
    puts "the enemy attacks"
  end

  def self.initiative
    roll = rand(1..20)
    if roll > 10
      puts "Ohh, you are very agile and attack first..."
      player_attack()
    else
      puts "Your foe has gotten best of you and attacks first.."
      enemy_attack()
    end
  end

end

newGame = NewGame.initialize
battle = Battle.new

player = Player.new("Dangle", 20, 5)
goblin = Enemy.new("Goblin", 10, 2)

goblin.attack(player)
player.attack(goblin)
battle = Battle.initiative
