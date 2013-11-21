# Guillem Carbonell García, NOV 2013, g@ubik.bz
# OOIF! Object-Oriented Interactive Fiction (Parser), v. 0.1

# 1. I am a computer hobbyist.
# 2. I am learning Ruby.
# 3. This is a parser for text adventures I am working on.

#THIS CLASS CREATES AN OBJECT THAT CONTAINS ALL THE VERBS THE PLAYER CAN EXECUTE
	#This is a bit messed. Sometimes verbs work with duplicated information and different data types. There are still lots to do in here.

	#Actions to implement: open, close, crouch, stand up, drop, pull, push

	#Actions fo fix: examine, exits, look, use, take

	#Actions to expand: go to

class Action

	def examine(object) #it has to take the object name, not the string
		if object != nil
			puts object.description
		else
			puts "I am not really sure what that is..."
		end
	end

	def exits
		puts $player.exits.to_s
	end

	def look(place)
		puts place.description
	end

	def goto(destiny, placevar) #(achived:)trying to translate the command strings into variable names
		if $player.exits.include? destiny
			$player.replace(Object.const_get($player.exits[destiny].upcase), Object.const_get($player.exits[destiny].upcase).exits)
			puts placevar.description
		else
			puts "I cannot go there."
		end
	end

	def use(object, with) #does not work
		if INTERACTIONS[object][0] == with
			INTERACTIONS[object][1].call
		end
	end

	def take(object_string)
		if $player.place ==  Object.const_get(object_string.upcase).place
			if Object.const_get(object_string.upcase).grab == true
				Object.const_get(object_string.upcase).place = $player #place the object in the player
				$player.inventory += Object.const_get(object_string.upcase) #and the player in the object
				#remove the object from the place
			end
		else
			puts "I cannot take that."
		end
	end

end