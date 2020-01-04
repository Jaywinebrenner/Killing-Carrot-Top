def players_died
  if dead? == true
    dead_messages = ["You fall down, blood gurgling out of your sinuses... your vision goes black. You have died.", "You emit a horrifying shreik and crumple to the ground. You have died.", "Your hear a strange crushing sound, like eating cereal. You feel your eyes liquifying and your innards spill onto the ground. You have died.", "A sharp pain shoots through your neck as a thick stream of blood squirts on the floor. Your Carotid artry has been severed. You have died.", "In an unusual moment of clarity in the heat of battle, times slows to a halt. Shrek lumbers into your field of vision. 'I am real' he says and you have died."]
    puts dead_messages.sample
    puts ""
    puts "Your quest to slay Carrot Top, Lord of Laughter has failed."
  end
end
