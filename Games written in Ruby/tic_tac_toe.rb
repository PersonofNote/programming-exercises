



def player_choice
puts "Please choose your mark (X/O)"
player_input = gets.chomp.upcase!
if player_input == "X" || "O"
  player_mark = player_input
  puts "Ok, you're #{player_mark}"
else
puts "#{player_choice} isn't a valid choice. Please try again."
  player_choice
end
end

player_choice


=begin
I'll need a player class and a board class, at least. The board will have a series of slots,
all initialized to 0 with a loop? Or should each slot be an object in the board class? Either store
the values in an array, or have the slots be their own things.

Player 1 symbol ||= (player choice)

Board looks like:

 1|2|3
-------
 O|5|6
-------
 7|X|9

To check for win condition: When a mark is placed, check if a corresponding mark is in the positions above, next to,
or diagonal from the original mark. If the spot to any side is nil, it is outside of the game range and should end.
If the spot next to it is not nil, and is occupied (not 0), then check the one next to that in the same direction.
How to do this?
=end