# Guillem Carbonell García, NOV 2013, g@ubik.bz
# OOIF! Object-Oriented Interactive Fiction (Parser), v. 0.1

# 1. I am a computer hobbyist.
# 2. I am learning Ruby.
# 3. This is a parser for text adventures I am working on.

#THIS CLASS DEFINES DE BASIC ATTRIBUTES OF AN OBJECT
	#CSubclasses may include interactive objects, containers, blockades, and so.

class Object
	def initialize(name = nil, description = nil, place = nil, grab = false)
		@name = name
		@description = description
		@room = place
		@grab = grab
	end

	def description
			@description
	end

	def place
		@room
	end

	def grab
		@grab
	end
end

#OBJECTS:
