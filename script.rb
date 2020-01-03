#!/usr/bin/env ruby
# require ('rspec')
require ('./lib/game')



resume = true
while (resume)
  puts("Welcome to The Lord of Laughs. Would you like to play?")
  input = gets.chomp
  # newGame = NewGame.initialize

  puts(prime1.function_dude)
  puts("Would you like to do this again sometime? Y/N")
  doResume = gets.chomp
  if doResume == "Y" || doResume == "y"
    resume = true
  else
    resume = false
  end
end
