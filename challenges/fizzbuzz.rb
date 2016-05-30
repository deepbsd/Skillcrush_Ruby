#!/usr/bin/env ruby

# output 'fizz' if n is divisible evenly by 3, 'buzz' if by 5,
# 'fizzbuzz if by both 3 and 5.

for n in (1..100) do
  if (n % 3 == 0) && (n % 5 == 0)
     puts "FizzBuzz"
  elsif n % 3 == 0
     puts "Fizz"
  elsif n % 5 == 0
     puts "Buzz"
  else 
     puts n
  end
end



