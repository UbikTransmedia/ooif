# Guillem Carbonell García, NOV 2013, g@ubik.bz
# OOIF! Object-Oriented Interactive Fiction (Parser), v. 0.1

# 1. I am a computer hobbyist.
# 2. I am learning Ruby.
# 3. This is a parser for text adventures I am working on.

#THIS CLASS INITIALIZES THE INITIAL VECTORS OF THE GAME
	#Creates a Player, an Actioner and the Input Console. It triggers the adventure!

require File.expand_path('../actions.rb', __FILE__)
require File.expand_path('../input.rb', __FILE__)
require File.expand_path('../objects.rb', __FILE__)
require File.expand_path('../places.rb', __FILE__)
require File.expand_path('../player.rb', __FILE__)

class Game
	#This class creates a game: with a player and a prompt line that manages the game elements (actions, objects, places).
	def initialize()
		#initialize player here
		puts "Tell me, human: what is your name?"
		@name = gets.chomp
		puts "Oh, #{@name}, that sounds funny to me.\n"

		puts "\nCHAPTER 1: WHERE\nSomething went wrong while landing. The space shuttle crashed into the blueish snow of Coros, the smaller satelite of New Basilea. Five minutes ago, from your window, all this looked like tundra. It seems that legends are true: 'Coros' will squeeze your spirit', Commander Hashnew said.\n\nThe planes' tail is missing. You wonder where the specimen may be, although it is probably far away and destroyed forever. Your priority now is to survive.\n"

		puts FUSELAGE.description
		$action = Action.new
		$player = Player.new(@name, FUSELAGE, {n: "cabin", e: "toilet", w: "snow01", s: "seats01"})
		$input = InputConsole.new
	end
end