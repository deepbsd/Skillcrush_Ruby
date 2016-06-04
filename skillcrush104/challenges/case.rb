#!/usr/bin/env ruby

puts "What's the weather like?  (one word answer please.)"
weather = gets.chomp.downcase


case weather
when 'sunny'
  puts "Rock on with your bad self and pass the sunscreen!"
when 'cloudy'
  puts "Maybe tomorrow will be less gloomy."
when 'foggy'
  puts "Better turn on the headlights and be careful driving!"
when 'rainy'
  puts "Get your ark ready!  It's the end of the world!"
else
  puts "I don't know that weather condition...."
end
