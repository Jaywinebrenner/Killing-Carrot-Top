class Battle
  def initialize (player, enemy)
    @player = player
    @enemy = enemy
    # @player = Player.new('Player', 10, rand(1..5))
    # @enemy = Enemy.new("Emo Phillips", 4, rand(1..5))
    self.initiative()
  end

  def player_attack
    damage_range_variable = @player.damage
    damage_range = rand(1..damage_range_variable)
    @player.attack(@enemy)
    puts "You charge and slash your foe directly in the face for #{damage_range} hit points of damage."
    if @enemy.alive? == false
      puts "You have laid waste to this vile creature. You stand triumphant. One step closer to the Lord of Laughter himself."
    end
    puts ""
    if @enemy.alive?
      puts "Your foe has been reduced to #{@enemy.health} hit points. God Speed, Comedian Slayer."
      initiative()
    end
  end

  def enemy_attack
    @enemy.attack(@player)
    puts "The enemy slashes your torso for #{@enemy.damage} hit points of damage."
    puts ""
    puts "You are down to #{@player.health} hit points. You can not fail, Comedian Slayer."
    if @player.alive?
      initiative()
    else
      puts "The sky darkens to an unfathomable black as blood rains from the sky in thick torrents. Skeletal hands burst from the earth. The wailing of hungry children and screaming lambs trumpet from near to far. Humanities fate is doomed to enslavement via the Illuimiati of Laughter. They have won. They reign supreme over all of humanity. For you..."
      puts ""
      puts "have died."
      # determine how to end game
    end
  end

  def initiative
    roll = rand(1..20)
    puts ""
    puts "1 - Attack"
    puts "2 - Run"
    puts ""
    initiative_answer = gets.chomp
    if initiative_answer == "2"
      puts "The sky darkens to an unfathomable black as blood rains from the sky in thick torrents. Skeletal hands burst from the earth. The wailing of hungry children and screaming lambs trumpet from near to far. Humanities fate is doomed to enslavement via the Illuimiati of Laughter. They have won. They reign supreme over all of humanity. For you... "
      puts ""
      puts "are a coward."
      puts ""
      puts "Game Over"
      puts ""
      prints "ruby game.rb"
    elsif initiative_answer == "1"
      if roll > 10
        puts "You are quick on your feet and attack first..."
        puts ""
        player_attack()
      else
        puts "Your foe has gotten best of you and attacks first.."
        puts ""
        enemy_attack()
      end
    end
  end
end
