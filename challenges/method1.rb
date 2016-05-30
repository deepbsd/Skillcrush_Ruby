#!/usr/bin/env ruby

# first method script

def squarepants(num1, num2=num1)
  if num1 == num2
      return num1 ** 2
  else
      return num1 ** num2
  end
end

# get user input:
puts "Please enter a number:"
number = gets.chomp.to_i
puts "What power do you want to raise it to?"
power = gets.chomp.to_i

puts "Your number result is #{squarepants(number, power)}"
