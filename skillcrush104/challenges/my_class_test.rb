#!/usr/bin/env ruby

class Ferret

    @@total_ferrets = 0

    def initialize
        @@total_ferrets += 1
    end

    def current_count
        #puts "There are currently #{@@total_ferrets} instances of my Ferret class"
	return @@total_ferrets
    end

    def set_name=(name)
        @name = name
    end

    def get_name
        return @name
    end

end


names = ["Fluffy", "Firby", "Flyboy", "Flopper", "Fitz", "Farrah",
"Fergie", "Famke", "Fanny", "Fabio", "Faith", "Felicity", "Fiona",
"Filippa", "Francis", "Frida", "Frances", "Ford", "Forrest",
"Francoise", "Franky", "Frederick", "Freddie", "Fidel", "Fernando",
"Flo", "Flint", "Floyd", "Fran", "Francesca", "Franklin", "Freeman",
"Matz"]

names.each do |name|
    f_name = name + "_blop"
    f_name = Ferret.new
    f_name.set_name = name
    puts "Welcome to the ferret farm, #{f_name.get_name.upcase}! \n\tYou are ferret number #{f_name.current_count}! "
end


