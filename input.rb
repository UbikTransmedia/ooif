# Guillem Carbonell García, NOV 2013, g@ubik.bz
# OOIF! Object-Oriented Interactive Fiction (Parser), v. 0.1

# 1. I am a computer hobbyist.
# 2. I am learning Ruby.
# 3. This is a parser for text adventures I am working on.

#THIS TOOL CREATES A COMMAND PROMPT FOR THE USER
	#It takes the input and converts it so the Actioner can use the strings.

class InputConsole
	def initialize()
		loop do	
			print "\n >>> "
			input = gets.chomp
			sentence = input.split

			case
				when sentence[0] == "examine"

					if defined?(Object.const_get(sentence[1].upcase)) #fails when you input a nonexistent string

						if $player.place ==  Object.const_get(sentence[1].upcase).place #this should chekc wether the object is in the same room
							$action.examine(Object.const_get(sentence[1].upcase))
						else
							puts "That's not in here."
						end

					end

				when sentence[0] == "exits"
					$action.exits

				when sentence[0] == "look" #BROKEN: it should describe the place
					$action.look(Object.const_get($player.place.upcase))

				when sentence[0] == "go" && sentence[1] == "to" #Seems to work, but only with 'n', 's', 'e', 'w'.
					if $player.exits.include? sentence[2].to_sym
						$action.goto(sentence[2].downcase.to_sym, Object.const_get($player.exits[sentence[2].downcase.to_sym].upcase))
					else
						puts "I can't go that way."
					end

				when sentence[0] == "quit"
					break

				when sentence[0] == "objects"
					#implement

				when sentence[0] == "use" && sentence[2] == "with"
					$action.use(sentence[1], sentence[3])

				when sentence[0] == "take"
					$action.take(sentence[1])
				else
					puts "\nNo le entiendo Senor..."
			end
		end
	end
end