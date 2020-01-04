$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'rspec'

RSpec.configure do |config|
  config.order = 'random'
end

Dir[File.join(File.dirname(__FILE__), "..", "lib" , "**.rb")].each do |file|
  require file
end

require_relative "lib/player.rb"
require_relative "lib/enemy.rb"
require_relative "lib/location.rb"
# require_relative "lib/locatins/location.data.rb"
require_relative "lib/battle.rb"
require_relative 'lib/intro.rb'
