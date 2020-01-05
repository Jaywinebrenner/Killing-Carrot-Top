require ('pry')
require ('rspec')
require ('game.rb')

describe Player do
  describe ".new" do
    it "creates an instance of the Player" do
      player = Player.new("Meredith", 20, 5)
      expect(player).to be_an_instance_of Player
    end
  end
  describe ".name" do
    it "assigns a name to a player" do
      player = Player.new("Meredith", 20, 5)
      expect(player.name).to eq("Meredith")
    end
  end
end

describe Enemy do
  describe ".new" do
    it "creates an instance of the Enemy" do
      goblin = Enemy.new("Goblin", 5, 3)
      expect(goblin).to be_an_instance_of Enemy
    end
  end
end

#   describe NewGame do
#     describe ".new" do
#       it "creates an instance of the NewGame" do
#         newGame = NewGame.initialize
#         expect(newGame).to be_an_instance_of NewGame
#       end
#     end
# end

  describe ".do_damage and .attack" do
    it "tests whether a player can attack an enemy" do
      player = Player.new("Dan", 20, 5)
      goblin = Enemy.new("Goblin", 10, 3)
      goblin.attack(player)
      expect(player).to be_an_instance_of Player
    end
  end





# player = Player.new
# game = Game.new
