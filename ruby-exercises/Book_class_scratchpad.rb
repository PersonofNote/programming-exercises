=begin
class Square
	def initialize
		@@number_of_squares ||= 0
		@@number_of_squares += 1
	end
	def self.count
		@@number_of_squares
	end
end

#two ways of writing the same thing

class Square
	def initialize
		if defined?(@@number_of_squares)
			@@number_of_squares += 1
		else @@number_of_squares = 1
		end
	end
	def self.count
		@@number_of_squares
	end
end

a = Square.new
puts Square.count
b = Square.new
puts Square.count
c = Square.new
puts Square.count

a = "This is a test string"
puts a.methods

#Dang string has a lot of methods.
=end

class Person
	attr_accessor :name, :age
end

p = Person.new
#p.name = "Fred"
p.age = 20
puts p.instance_variables
#Ok so even if person has a name and age, Fred doesn't?


