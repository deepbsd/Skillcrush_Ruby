#!/usr/bin/env ruby

def always3(num)
  return (((num + 5) * 2) - 4)/2
end

puts "Please enter an integer, any integer. I'll show you how to always make it 3."
orig_num = gets.chomp.to_i

#num = (((orig_num + 5) * 2) - 4)/2
puts "Your secret number = (((#{orig_num} + 5) * 2) - 4)/2 = #{always3(orig_num)}"
puts "That number is always 3 greater than your original number."
