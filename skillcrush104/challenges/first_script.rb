#!/usr/bin/env ruby


now = Time.now
this_year = now.year



puts "Hi!  What's your name?"
name = gets.chomp
puts "What year were you born?"
birth_year = gets.chomp
birth_year = birth_year.to_i

years = this_year - birth_year


puts "Just think, #{name}, you could \nhave started coding ruby #{years} ago!\n\n"
