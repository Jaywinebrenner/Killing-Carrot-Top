require_relative "lib/player.rb"
require_relative "lib/enemy.rb"
require_relative "lib/location.rb"
# require_relative "lib/locatins/location.data.rb"
require_relative "lib/battle.rb"
# require_relative 'lib/intro.rb'

# gallagher.attack(player)
# player.attack(gallagher)
# battle = Battle.initiative

class Game
    attr_accessor :player

    def initialize

        @player = Player.new('Player', 25, 3)
        self.create_player
    end

    def create_player
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
      puts "What is thy name, Comedian Slayer?"
      puts ""
      user_input_name = gets.chomp
      puts ""
      puts user_input_name + " ... Tis a fantastic name. Before you embark on your perilous journey, you must pick one of three weapons at your disposal."
      puts ""
      puts "1 - A butter knife"
      puts "2 - A broken 2x4"
      puts "3 - A trash can lid"
      puts "4 - Take nothing"
      weapon = gets.chomp
      if weapon == "1"
        puts "You admire the sheen on the butter knife and lick the edges adoringly."
        @player.damage = @player.damage + 3
      elsif weapon == "2"
        puts "You examine the 2x4 and lick your lips."
        @player.damage = @player.damage + 4
      elsif weapon == "3"
        puts "As you pick up the trash lid, you catch your refelction in the sheen of the metal. You are a broken soul. Perhaps this trash can lid will help mend it."
        @player.damage = @player.damage + 1
      elsif weapon == "4"
        puts "You didn't grab a weapon and simply opt to battle the Illuimiati of Laughter with your fists."
      else
        puts "You didn't grab a weapon and simply opt to battle the Illuimiati of Laughter with your fists."
      end
      puts ""

      puts "We wish you the best of luck, " + user_input_name + " as you sink deep within this vile quagmire of comedy."
      puts ""
      @player.name = user_input_name
      create_locations
    end

    def create_locations
      Location.new(nil).alley
        #for i in loop while whater:
        # Location.new(add enemies if you want)
        # then youll have x number of locaitons
    end

    def roam
        # prompt user to move
        @player.move()
    end
end

# newGame = Intro.new
emo_phillips = Enemy.new("Emo Phillips", 8, 3)
tim_allen = Enemy.new("Tim Allen", 10, 4)
judy_tenuta = Enemy.new("Judy Tenuta", 12, 4)
gallagher = Enemy.new("Gallagher", 12, 6)
jeff_foxworthy = Enemy.new("Jeff Foxworthy", 8, 6)
howie_mandell = Enemy.new("Howie Mandell", 15, 3)
carrot_top = Enemy.new("Carrot Top, Lord of Laughter", 25, 7)

beginingLocation = Location.new(nil)

game = Game.new.initialize
# battle = Battle.new

# beginingLocation.tim_allens_spectre
# player = Player.new("Dangle", 20, 5)
# gallagher = Enemy.new("Gallagher", 10, 2)
