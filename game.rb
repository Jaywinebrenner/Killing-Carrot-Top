require_relative "lib/player.rb"
require_relative "lib/enemy.rb"
require_relative "lib/location.rb"
# require_relative "lib/locatins/location.data.rb"
require_relative "lib/battle.rb"
require_relative 'lib/intro.rb'




# gallagher.attack(player)
# player.attack(gallagher)
# battle = Battle.initiative

class Game
    attr_accessor :player

    def initialize

        @player = Player.new('Player', 20, 3)
        self.create_player
    end

    def create_player
      create_locations
      puts ""
      puts "What is thy name, Comedian Slayer?"
      puts ""
      user_input_name = gets.chomp
      puts ""
      puts "Before you embark on your journey, you must pick one of three weapons at thy disposal."
      puts ""
      # puts "And there are 3 weapons at thy disposal as you sink deep within this quagmire of comedy. Which do you choose?"
      puts "1 - A butter knife"
      puts "2 - A broken 2x4"
      puts "3 - A trash can lid"
      weapon = gets.chomp
      if weapon == "1"
        puts "You admire the sheen on the butter knife and lick the edges adoringly."
        @player.damage + 2
      elsif weapon == "2"
        puts "You examine the 2x4 and lick your lips."
        @player.damage + 2
      elsif weapon == "3"
        puts "As you pick up the trash lid, you catch your refelction in the sheen of the metal. You are a broken soul. Perhaps this trash can lid will help mend it."
        @player.damage + 1
      else
        puts "You didn't grab a weapon and simply opt to battle the Illuimiati of Laughter with your fists."
      end
      puts ""

      puts "We wish you the best of luck, " + user_input_name + " as you sink deep within this vile quagmire of comedy."
      puts ""
      @player.name = user_input_name

    end

    def create_locations
      Location.new(nil).intro
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
beginingLocation = Location.new(nil)
game = Game.new.initialize
battle = Battle.new

beginingLocation.tim_allens_spectre
player = Player.new("Dangle", 20, 5)
gallagher = Enemy.new("Gallagher", 10, 2)
