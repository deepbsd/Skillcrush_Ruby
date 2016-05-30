#!/usr/bin/env ruby

# Creating a first class

class Rubyist

    attr_accessor :name, :experience

    def about_rubyist
        return "#{@name} is a rubyist with #{@experience} experience."
    end
end


joe_ruby = Rubyist.new
puts "What's the Rubyist's name?"
r_name = gets.chomp
joe_ruby.name = r_name
puts "What's the Rubyist's experience level? [beginning, intermediate, advanced]"
experience = gets.chomp
joe_ruby.experience = experience


puts joe_ruby.about_rubyist
