# Guillem Carbonell García, NOV 2013, g@ubik.bz
# OOIF! Object-Oriented Interactive Fiction (Parser), v. 0.1

# 1. I am a computer hobbyist.
# 2. I am learning Ruby.
# 3. This is a parser for text adventures I am working on.

#THIS FILE INITIALIZES AN EXAMPLE GAME WITH ALL THE DATA YOU GIVE TO IT
	#All this code is asking for some refactoring, but I want to include a few more things before optimizing it.

require File.expand_path('../game_class.rb', __FILE__)
require File.expand_path('../actions.rb', __FILE__)
require File.expand_path('../objects.rb', __FILE__)
require File.expand_path('../places.rb', __FILE__)


#PLACES
	#def initialize(name, public_name, exits, description, objetcs) <- add special commands

CABIN = Place.new("CABIN", "Cabin", {s: "fuselage"}, "The pilot is dead and everything looks broken in here.")

FUSELAGE = Place.new("FUSELAGE", "Fuselage", {n: "cabin", e: "toilet", w: "snow02", s: "seats01"}, "You woke up here, among frozen food meals and optional pillows. The door you used to enter has been ripped appart in the west. There is a toilet to the east. Your head spins but you still know the cabin is to the north. To the south you can explore the fuselage.")

SEATS01 = Place.new("SEATS01", "Front seats", {n: "fuselage", s: "seats02"}, "Doctress Sanders and Official Comichi lay dead and squeezed; they were wearing the security belt, unlike you. There is luggage spreaded around.")

SEATS02 = Place.new("SEATS02", "Back seats", {n: "seats01", s: "snow01"}, "You were sitting here. Now that the fusselage has been ripped away a rubbish mountain leads your to the snow in the south. You think that you can distinguish a glittering light at the very end, but if you go out you would probably die.")

SNOW01 = Place.new("SNOW1", "Snow", {n: "seats02"}, "It is frozen in here. I see not much in the distance but a windy cloud of thin snow and acid dust. A light glitters in the horizon.")

SNOW02 = Place.new("SNOW2", "Snow", {e: "fuselage"}, "From the outside the cabin says: METEOR AIRLINES. Some debris has been scattered around. No clue where the door is. It is too cold to go anywhere but back inside.")
TOILET = Place.new("TOILET", "Toilet", {w: "fuselage"}, "The toilet puked a blue liquid.")

#OBJECTS
	#initialize(name = nil, description = nil)

CLOCK = Object.new("clock", "It is old, ugly and does not work.", CABIN, true)
KEY = Object.new("key", "I wonder what it opens...", FUSELAGE, true)


#INTERACTIONS
	#{object: [used with, code block to execute]}

INTERACTIONS = {"key" => ["clock", p = Proc.new{puts "You open the clock!"}]}

#START!
game = Game.new()
game.input_console()