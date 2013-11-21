# Guillem Carbonell García, NOV 2013, g@ubik.bz
# OOIF! Object-Oriented Interactive Fiction (Parser), v. 0.1

# 1. I am a computer hobbyist.
# 2. I am learning Ruby.
# 3. This is a parser for text adventures I am working on.

#THIS CLASS DEFINES DE PLAYER
	#Keeps the track of the hero in his journey.

class Player
	def initialize(name, place, exits)
		@name = name
		@condition = 100
		@place = place
		@inventory = []
		@exits = exits
		@milestones = []
		print "\n\n", exits, "\n\n"
	end

	def exits
		@exits
	end

	def place
		@place
	end

	def replace(new_place, new_exits)
		@place = new_place
		@exits = new_exits
	end

	def exits
		@exits
	end
end