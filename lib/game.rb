class Player
  def initialize (name, health, damage)
    @name = name
    @health = health
    @damage = damage
  end

  def name
    @name
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

  def players_died
    if dead? == true
      dead_messages = ["You fall down, blood gurgling out of your sinuses... your vision goes black. You have died.", "You emit a horrifying shreik and crumple to the ground. You have died.", "Your hear a strange crushing as time slows down. You feel your eyes liquifying and your innards spill onto the ground. You have died.", "A sharp pain shoots through your neck as a thick stream of blood squirts on the floor. Your Carotid artry has been severed. You have died.", "In an unusual moment of clarity in the heat of battle, times slows to a halt. Shrek lumbers into your field of vision. I am real and you have died."]
      puts dead_messages.sample
      puts ""
      puts "Your quest to slay Carrot Top, Lord of Laughter has failed."
    end
  end
end


class Enemy
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



class Battle
  def initialize
    @player_turn = player_turn
  end

  def self.initiative
    roll = rand(1..20)
    if roll > 10
      puts "Ohh, you are very agile and attack first..."
      @player_turn = true
    else
      puts "Your foe has gotten best of you and attacks first.."
      @player_turn = false
    end
  end

  def player_attack
    if @player_turn = true
    end
  end
end
  player = Player.new("Dangle", 20, 5)
  goblin = Enemy.new("Goblin", 10, 2)
  goblin.attack(player)

  battle = Battle.initiative
  newGame = NewGame.initialize
