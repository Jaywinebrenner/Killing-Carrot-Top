class Location
  def initialize (enemies)
    @enemies = enemies
  end

  def alley
    puts "You have traversed the sprawling metropolis of Laughlandia for weeks on end and have successfully spotted the elusive Prop Tower where the inner sanctum of the Illuminati of Laughter resides. Slinking through garbage strewn alley ways, skillfully avoiding the army of Cybernetic Dane Cooks on partrol, you are greeted with the unusual smell of sauteed garlic clearly eminating from a ramshackled tent strewn together via rusted shopping carts and shredded blue tarps."
    puts ""
    puts "Do you: "
    puts ""
    puts "1 - Continue towards Prop Tower"
    puts "2 - Carefully approach the tent and sumptuous smells"
    puts "3 - Hide behind a nearby dumpster to survey the tent"
    puts ""
    answer = gets.chomp
    if answer == "1"
      puts "You deem it unwise to investigate the lovely smells despite your rumbling stomach. You continue towards your desintation."
      tim_allens_spectre()
    elsif answer == "2"
      puts "As you approach the alluring smells, a lanky figure cloaked in shadow emerges from the make-shift tent. 'How dare you', says an eerie, child-like voice crackling in-and-out of falsetto. 'How dare you intruupt my sauteed human hand buffet.' The figure steps into the moonlight and tosses a roasted human hand at your feet. 'No one intruupts Emo Phillips as he dines!' He pulls up his lanky arm, points at you and howls in a terrifying ear-piercing shriek."
      # battle()  how call battle
    elsif answer == "3"
      puts "You punch yourself in the face. A true Comedy Slayer must never rest on the laurels of indecision. In order to take down the Illuminati of Laughter, one must never sit idle."
      puts ""
      puts "You take 2 Hit Points of damage."
      alley()
      # @player.health -= 2 how to affect player
    else
      puts "You punch yourself in the face twice. A true Comedy Slayer must never rest on the laurels of indecision. In order to take down the Illuminati of Laughter, one must never sit idle."
      puts ""
      puts "You take 2 Hit Points of damage."
      alley()
      # @player.health -= 3 how to affect player
    end


  end

  def tim_allens_spectre
    puts "Crawling through a large pile of municipal waste and rubbish, you emerge in the courtyard of the elusive Prop Tower."
    puts ""
    puts "It is an imposing structure with life-like statues of blood thristy comedians looming from the tresses like maniacal gargoyles."
    puts ""
    puts "As you approach, the bellowing voice of Tim Allen echos throughout the coutryard. 'Welcome Comedian Slayer. To gain access to Prop Tower, you must answer 3 questions about my celebrated situational comedy Home Improvement.'"
    puts ""
    puts "'What was the name of the revered child actor who portrayed my son Randy?'"
    answer_one = gets.chomp
    if answer_one.upcase == "JONATHAN TAYLOR THOMAS" || answer_one.upcase == "JONATHAN THOMAS"
      puts "You are correct Comedian Slayer."
    else
      damage = rand(1..4)
      puts "'WRONG!' bellows the disembodied voice of Tim Allen as several hissing measuring tapes materialize out of thin air and whip you in the face for #{damage} hit points of damage."
      # @player.health -= damage figure out how to affect stats
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
    puts "The iron wrought doors afixed with an ornate bas-relief depiction of Jimmy Durante creek open accompanied with the distant eerie sounds of 'Ha cha cha cha'"
    puts ""
    puts "Do you: "
    puts "1 - Continue through the iron wrought door into the belly of the Illuminati of Laughter"
    puts "2 -Traverse the outsides of the tower for an alternate entrance."
    movement = gets.chomp
    if movement == "1"
      foyer()
    elsif movement == "2"
      puts "You walk the garbage strewn perimeter of the building in search of a less obvious entrance all for naught. As you circle back towards the iron wrought front doors, the familiar voice of Tim Allen can be heard bellowing from above. 'How dare you insult me by not accepting my graciousness! Feel the wrath of my Makita Circular saw!' Tim Allen's statue flips from Prop Tower's tresses in impressive Olympic fashion, lands several yards away and attacks."
      # battle()
    else
      puts "You punch yourself in the face. A true Comedy Slayer must never rest on the laurels of indecision. In order to take down the Illuminati of Laughter, one must never sit idle."
      puts ""
      puts "You take 2 Hit Points of damage."
      # @player.health -= 2
    end
  end

  def foyer
    puts "You enter the vast foyer of Prop tower. The room is encapsulated in shadow and pain. You can feel the thick black blood of depravity hanging in the air. This is truely an unholy, otherworldly and vile place. You winch at the stench of sulfer and human waste. There is a large staircase which goes up to a landing containing three doors. Door number one is strangely ornate with various flower species carved into it's heavy wooden frame. The soft and unsettling sounds of what seems to be an accordian can be heard in the distance. Door Number two is crudely painted in an unsettling prison strip pattern and looks to have rotting watermelon rinds strewn about it's base. Door number three is smeared with a sticky tar like substance which reeks of diesel gasoline and casual bigotry."
    puts ""
    puts "Which door do you enter?"
    puts "1"
    puts "2"
    puts "3"
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
  end

  def judy_tenutas_coven
    puts "You gingerly make your way through a long windowless hallway as the sounds of what appear to be an accordian competently played gets louder and louder. As you approach an archway which leads to an open room shrouded in darkness, the sound abruptly stops. An upright sarcophagus stand perfectly in the room's center with bones strewn about it's base. The sudden void the accordian's syllabic tones leaves you uneasy. You get the feeling you are being watched."
    puts "Do you: "
    puts "1- Move forward to investigate the sarcophagus"
    puts "2 - Retreat back into the lobby"
    puts "3 - Stealthily sneak past the sarcophagus and attempt slip into a hallway on the other side of the room"
    answer = gets.chomp
    if answer == "1"
      puts "As you make your way towards the sarcophagus, an ear piercing shreik knifes your ears and and ominious blast bellows from an accordian. 'Helllllo, Comedian Slayer!' mocks a voice in the unmistakable affectation of famed 80s character comedian Judy Tenuta.
      'Welcome to the Illuminati of Laughter, where you will die horribly soundtracked by my accordian tones!' Judy Tenuta blasts out of a pile of bones and hovers in the air. She omits a hysterical cackle and attacks!"
      # battle()
    elsif answer == "2"
      foyer()
    elsif answer == "3"
      puts "As you make your around the sarcophagus, an ear piercing shreik knifes your ears and an ominious blast bellows from an accordian. 'Helllllo, Comedian Slayer!' mocks a voice in the unmistakable affectation of famed 80s character comedian Judy Tenuta.
      'Welcome to the Illuminati of Laughter, where you will die horribly soundtracked by my accordian tones!' Judy Tenuta blasts out of a pile of bones and hovers in the air. She emits a hysterical cackle and attacks!"
        # battle()
    else
      puts "You punch yourself in the face. A true Comedy Slayer must never rest on the laurels of indecision. In order to take down the Illuminati of Laughter, one must never sit idle."
      puts ""
      puts "You take 2 Hit Points of damage."
    # @player.health -= 2
      judy_tenutas_coven()
    end

  end

  def gallaghers_lair
  end

  def jeff_foxworthys_den
  end

  def howie_mandells_dungeon
  end

  def carrot_tops_throne_room
  end

end
