#!/usr/bin/env ruby

# Here's the old way used with kitties...
kitty1 = { "name" => "k_fido", "owner" => "Jimmy Jones", "weight" => 40 }
kitty2 = { "name" => "k_bowser", "owner" => "Mark McPherson", "weight" => 55 }
kitty3 = { "name" => "k_mac", "owner" => "Mike Magilicutty", "weight" => 60 }
kitty4 = { "name" => "k_roscoe", "owner" => "Ginny J", "weight" => 35 }
kitty5 = { "name" => "k_milo", "owner" => "DJ", "weight" => 18 }
kitty6 = { "name" => "k_molly", "owner" => "DJ", "weight" => 12 }

# Here's the new (using symbols) way used with doggies...
dog1 = { name: "fido", owner: "Jimmy Jones", weight: 40 }
dog2 = { name: "bowser", owner: "Mark McPherson", weight: 55 }
dog3 = { name: "mac", owner: "Mike Magilicutty", weight: 60 }
dog4 = { name: "roscoe", owner: "Ginny J", weight: 35 }
dog5 = { name: "milo", owner: "DJ", weight: 18 }
dog6 = { name: "molly", owner: "DJ", weight: 12 }

kitties = [kitty1, kitty2, kitty3, kitty4, kitty5, kitty6]
dogs = [dog1, dog2, dog3, dog4, dog5, dog6]

puts "========= KITTIES =========="
for animal in kitties do
    puts "Animal: #{animal["name"]} Owner: #{animal["owner"]}  Weight: #{animal["weight"]}"
end
puts "========== DOGS ============"
for animal in dogs do
    puts "Animal: #{animal[:name]} Owner: #{animal[:owner]}  Weight: #{animal[:weight]}"
end

=begin
puts "Name: #{kitty1["name"]}  Owner: #{kitty1["owner"]} Dog Weight: #{kitty1["weight"]}"
puts "Name: #{dog1[:name]}  Owner: #{dog1[:owner]} Dog Weight: #{dog1[:weight]}"
=end
