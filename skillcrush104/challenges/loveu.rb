#!/usr/bin/env ruby

#  This is a 'love script' using a while loop
#  It's for Skillcrush "A Loop for Love"

$count = 0
$vulnerability = 0
$courage = 0
$compassion = 0


def how_courageous
    courage = Random.rand(1..5)
    return courage
end

def how_compassionate
    compassion = Random.rand(1..5)
    return compassion
end

def how_vulnerable
    courage = how_courageous
    compassion = how_compassionate
    vulnerability = courage + compassion
    return vulnerability
end

$vulnerability = how_vulnerable

while $vulnerability >= 3 do
    puts "I love you, I need you, Please never let me go!\n\n"
    sleep(2)
    $vulnerability = how_vulnerable
    $courage = how_courageous
    $compassion = how_compassionate
    puts "courage: #{$courage}  compassion: #{$compassion} vulnerability: #{$vulnerability}"
    $count += 1
    if $count > 30
        break
    end
end
