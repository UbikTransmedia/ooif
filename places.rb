# Guillem Carbonell García, NOV 2013, g@ubik.bz
# OOIF! Object-Oriented Interactive Fiction (Parser), v. 0.1

# 1. I am a computer hobbyist.
# 2. I am learning Ruby.
# 3. This is a parser for text adventures I am working on.

#THIS CLASS DEFINES EVERY PLACE IN THE GAME
	#A place can be also any situation in which the player has to explore. Places define their exits with coordinates; it should also add some special exits out from cordinates and where the blocked doors are.
	
require File.expand_path('../objects.rb', __FILE__)

class Place
	def initialize(name, public_name, exits, description)
		@name = name
		@public_name = public_name
		@exits = exits # {N: CAVE, E:, S:, W:}
		@description = description
	end

	def description
		@description
	end

	def exits
		@exits
	end

	def objects
		@objects
	end

end

# PLACES:
