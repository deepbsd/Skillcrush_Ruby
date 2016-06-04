#!/usr/bin/env ruby

# this is the final app for Skillcrush 104.  It's a weather app used
# to snag the forecast from a user-selected location

require 'barometer'



def get_weather(where)
    barometer = Barometer.new(where)
    weather = barometer.measure

    today = Time.now.strftime("%d").to_i
    tomorrow = today+1

    date = Date.parse("06-01-2016")

    weather.forecast.each do |forecast|
        day = forecast.starts_at.day
	if day == today
	    day_name = 'Today'
	else
	    day_name = forecast.starts_at.strftime('%A')
        puts day_name + " will be " + forecast.icon + " with low of " + forecast.low.f.to_s + " and a high of " + forecast.high.f.to_s
	end


    end

end


# Get location from user  
puts "What area or zipcode are you interested in?"
where = gets.chomp
get_weather(where)
