#!/usr/bin/env ruby

puts "What's your favorite color?"
fav_color = gets.chomp.downcase

colors = { 
  'red' => "Red like fire!",
  'orange' => "Orange like, well... an orange.",
  'yellow' => "Yellow daffodils are so pretty in the spring!",
  'green' => "Have you been to the Emerald City in Oz?",
  'blue' => "Blue like the sky!",
  'purple' => "Purple plums are the tastiest.",
  'default' => "Hmm, well I don't know what that color is."
  }

all_colors = colors.keys

if all_colors.include?(fav_color)
    puts colors[fav_color]
else
    puts colors['default']
end
