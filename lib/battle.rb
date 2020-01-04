
class Battle

  def player_attack
    puts "the player attacks"
    player.attack(gallagher)
  end

  def enemy_attack
    puts "the enemy attacks"
    gallagher.attack(player)
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
