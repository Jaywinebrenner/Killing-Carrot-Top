

class NewGame
  def self.initialize
    puts ""
    puts " __   .__.__  .__  .__                      "
    puts "|  | _|__|  | |  | |__| ____    ____        "
    puts "|  |/ /  |  | |  | |  |/    \  / ___\       "
    puts "|    <|  |  |_|  |_|  |   |  \/ /_/  >      "
    puts "|__|_ \__|____/____/__|___|  /\___  /       "
    puts "     \/                    \//_____/        "
    puts "_________                             __    "
    puts "\_   ___ \_____ ______________  _____/  |_  "
    puts "/    \  \/\__  \\_  __ \_  __ \/  _ \   __\ "
    puts "\     \____/ __ \|  | \/|  | \(  <_> )  |   "
    puts " \______  (____  /__|   |__|   \____/|__|   "
    puts "        \/     \/                           "
    puts "___________                                 "
    puts "\__    ___/___ ______                       "
    puts "  |    | /  _ \\____ \                      "
    puts "  |    |(  <_> )  |_> >                     "
    puts "  |____| \____/|   __/                      "
    puts "               |__|                        "
    puts ""
    puts ""
    puts "Spawned from the fetid and pestulent comedy clubs from the dark edges of civilization, you embark on your journey to exact revenge upon this foul world from which you suffered so."
    puts ""
    puts "Your singular journey is to infiltrate the elite comedy circuit of the Illuimiati of Laughter- a sinisiter coalition of comedians hell bent on the enslavement of the human race, world dominance and crushing the dignity of the human spirit."
    puts ""
    puts "You must assassinate the Ultimate Comedy Beast, Lord of Laughter, King of the Cutups, the Baron of Belly Busting himself - Carrot Top. It will be a perilous journey filled with violence, mayhem, depravity and suffering."
    puts ""
    puts ""
    puts "What is your name, Comedian Slayer?"
    puts ""
    user_input_name = gets.chomp
    puts ""
    puts "We wish you the best of luck, " + user_input_name + " as you sink deep within this vile quagmire of comedy."
    puts ""
  end
end


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

class Locations
  def tim_allens_spectre
    puts "You have traversed the sprawling metropolis of Laughlandia for weeks on end and have successfully found the elusive Prop Tower where the inner sanctum of the Illuminati of Laughter resides."
    puts ""
    puts "It is an imposing structure with life-like statues of blood thristy comedians looming from the tresses like maniacal gargoyles."
    puts "As you approach, the bellowing voice of Tim Allen echos throughout the street. 'Welcome Comedian Slayer. To gain access to Prop Tower, you must answer 3 questions about my celebrated situational comedy Home Improvement.'"
    puts ""
    puts "'What was the name of the revered child actor who portrayed my son Randy?'"
    answer_one = gets.chomp
    if answer_one.upcase == "JONATHAN TAYLOR THOMAS" || answer_one.upcase == "JONATHAN THOMAS"
      puts "You are correct Comedian Slayer."
    else
      damage = rand(1..4)
      puts "'WRONG!' bellows the disembodied voice of Tim Allen as several hissing measuring tapes materialize out of thin air and whip you in the face for #{damage} hit points of damage."
    end
    puts ""
    puts "'What was the name of my characters ficticious television show?'"
    answer_two = gets.chomp
    if answer_two.upcase == "TOOL TIME" || answer_two.upcase == "TOOLTIME"
      puts "You are correct Comedian Slayer."
    else
      damage = rand(1..4)
      puts "'WRONG!' bellows the disembodied voice of Tim Allen as several Phillips-Head drill bits materialize out of thin air and strike you in the chest for #{damage} hit points of damage."
    end
    puts ""
    puts "'Which season did celebrated comedian Jay Leno make a cameo?''"
    answer_three = gets.chomp
    if answer_three.upcase == "FOUR" || answer_three.upcase == "SEASON FOUR" || answer_three.upcase == "4" || answer_three.upcase == "SEASON 4"
      puts "You are correct Comedian Slayer."
    else
      damage = rand(1..4)
      puts "'WRONG!' bellows the disembodied voice of Tim Allen as several vice grips materialize out of thin air and clamp down on your soft flesh for #{damage} hit points of damage."
    end
    puts "And thus you have passed my test. You may proceed into Prop Tower."
    puts ""
    puts "The iron wrought doors afixed with an ornate bas-relief depiction of Jimmy Durante creek open with the distant eerie sounds of 'Ha cha cha cha'"
  end

  def foyer
    puts "You enter the vast foyer of Prop tower. The room is encapsulated in shadow and pain. You can feel the thick black blood of depravity hanging in the air. This is truely an unholy, otherworldly and vile place. You winch at the stench of sulfer and human waste. There is a large staircase which goes up to a landing containing three doors. Door number one is strangely ornate with various flower species carved into it's heavy wooden frame. The soft and unsettling sounds of what seems to be an accordian can be heard it the distance. Door Number two is crudely painted in an unsettling prison strip pattern and looks to have rotting watermelon rinds strewn about it's base. Door number three is smeared with a sticky tar like substance which reeks of diesel gasoline and casual bigotry."
    puts ""
    puts "Which door do you enter?"
    puts "1, 2 or 3?"
    puts ""
    door_choice = gets.chomp
    if door_choice == "1"
      judy_tenutas_coven()
    elsif door_choice == "2"
      gallaghers_lair()
    elsif door_choice == "3"
      jeff_foxworthys_den()
    else
      puts "Please enter the door you prefer to enter: 1, 2 or 3..."
  end

  def judy_tenutas_coven
  end

  def gallaghers_lair
  end

  def jeff_foxworthys_den
  end

  def howie_mandells_dungeon
  end


end




newGame = NewGame.initialize
beginingLocation = Locations.new
beginingLocation.tim_allens_spectre
battle = Battle.new

player = Player.new("Dangle", 20, 5)
gallagher = Enemy.new("Gallagher", 10, 2)

# gallagher.attack(player)
# player.attack(gallagher)
# battle = Battle.initiative
