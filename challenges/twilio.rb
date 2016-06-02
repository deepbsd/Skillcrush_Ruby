#!/usr/bin/env ruby

#  using the twilio api to create a magic 8-ball script


require 'rubygems'
require 'twilio-ruby'

account_sid = "my_twilio_sid"
auth_token = "my_auth_token"


@client = Twilio::REST::Client.new(account_sid, auth_token)

answers = [
            "It is certain.",
	    "It is decidedly so",
	    "Without a doubt",
	    "Yes, definitely",
	    "You may rely on it",
	    "As I see it, yes",
	    "Most likely",
	    "Outlook good",
	    "Yes",
	    "Signs point to yes",
	    "Reply hazy, try again.",
	    "Ask again later...",
	    "Better not tell you now...",
	    "Cannot predict now...",
	    "Concentrate and ask again.",
	    "Don't count on it",
	    "My reply is no",
	    "My sources say no",
	    "Outlook not so good",
	    "Very doubtful"
]

puts "What question troubles you? "
no_ans = gets.chomp

answer = answers[Random.rand(0..answers.length)]

message = @client.account.messages.create(
    :from => "+mytwilio_number",
    :to => "+1my_cell_phone_no",
    :body => "#{answer}"
)

puts message.to


