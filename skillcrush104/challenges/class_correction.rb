#!/usr/bin/env ruby

# This is a correction to one of Adda's classes for an example of
# correcting class syntax--and also, I think, to illustrate the
# need for inheritance among classes...

class Pet
 
	def set_name=(name)
		@name = name
	end
 
	def get_name
		return @name
	end
 
	def set_owner=(owner_name)
		@owner_name = owner_name
	end
 
	def get_owner
		return @owner_name
	end
end

class Ferret < Pet

	@@total_ferrets = 0

	def Ferret.new
		@@total_ferrets += 1
	end

	def set_name=(name)
		@name = name
	end

	def get_name
		return @name
	end

	def self.current_count
		puts "There ae currently #{@@total_ferrets} instances of my ferret class."
	end
  
	def squeal
		return "squeeeeee"
	end
 
end
 
class Chinchilla < Pet

	def squeek
		return "eeeep"
	end
 
end
 
class Parrot < Pet
 
	def tweet
		return "tweet"
	end
 
end
 
my_ferret = Ferret.new
my_ferret.set_name = "Fredo"
ferretname = my_ferret.get_name
 
my_parrot = Parrot.new
my_parrot.set_name= "Budgie"
parrotname = my_parrot.get_name
 
my_chinchilla = Chinchilla.new
my_chinchilla.set_name= "Dali"
chinchillaname = my_chinchilla.get_name
 
puts "#{ferretname} says #{my_ferret.squeal}, 
#{parrotname} says #{my_parrot.tweet}, 
and #{chinchillaname} says #{my_chinchilla.squeek}."
 
puts my_ferret.inspect
puts my_parrot.inspect
puts my_chinchilla.inspect

###  *** my test of ferret_count !!!
names = ["Fluffy", "Firby", "Flyboy", "Flopper", "Fitz", "Farah",
"Fergie", "Famke", "Fanny", "Fabio", "Faith", "Felicity", "Fiona",
"Filippa", "Francis", "Frida", "Frances", "Ford", "Forest",
"Francoise", "Franky", "Frederick", "Freddie", "Fidel", "Fernando",
"Flo", "Flint", "Floyd", "Fran", "Francesca", "Franklin", "Freeman",
"Matz"]

names.each do |name|
    f_name = name + "_ferrret"
    f_name = Ferret.new
    f_name.set_name = name
    puts "Welcome to the farm, #{name}!  It's good to be a ferret!"
end
