class Dungeon
	attr_accessor :player

	def initialize(player)
		@player = player
		@rooms = {}
	end

	def add_room(reference, name, description, connections)
		@rooms[reference] = Room.new(reference,name,description,connections)
	end

	def start(location)
		@player.location = location
		show_current_description
	end

	def show_current_description
		puts find_room_in_dungeon(@player.location).full_description
	end

	def find_room_in_dungeon(reference)
		@rooms[reference]
	end

	def find_room_in_direction(direction)
		find_room_in_dungeon(@player.location).connections[direction]
	end

	def go(direction)
		puts "You go " + direction.to_s
		@player_location = find_room_in_direction(direction)
		show_current_description
	end

end

class Player
	attr_accessor :name, :location
	def initialize(name)
		@name = name
	end
end

class Room
	attr_accessor :reference, :name, :description, :connections
	def full_description
		@name + "\n\nYou are in" + @full_description
	end
end

player = Player.new("Hero Protaganist")
my_dungeon = Dungeon.new()

my_dungeon.add_room(:largeCave, "Large cave", "A large cave", {:east => :smallcave})
my_dungeon.add_room(:smallCave, "Small cave", "A small cave", {:west => :largecave})

my_dungeon.start(:largecave)