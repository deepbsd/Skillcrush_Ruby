#!/usr/bin/env ruby

#  This is a birthpath number app for numerology.  Your birthpath
#  number is a single digit.  Read all about it at
#  https://cafeastrology.com/numerology.html

puts "Please enter your birthdate in format MMDDYYYY"
date = gets.chomp

# zero out some variables; don't you have to do this in ruby???
sum = 0
sum1 = 0
sum2 = 0


# add the numbers in the date string
sum = date[0].to_i + date[1].to_i + date[2].to_i + date[3].to_i + date[4].to_i + date[5].to_i + date[6].to_i + date[7].to_i


# I think normally I would be using a loop and functions by now, but
# we haven't gotten there yet!
if sum.to_s.length == 2
  sum1 = sum.to_s[0].to_i + sum.to_s[1].to_i
  # Probably won't need to do this, but I'm prepared just in case...
  if sum1.to_s.length > 1  
      sum2 = sum1.to_s[0].to_i + sum1.to_s[1].to_i
      path = sum2
      puts "Your birthpath = #{path}"
  else 
      path = sum1
      puts "Your birthpath = #{path}"
  end
else
  path = sum
  puts "Only one time through!  Your birthpath = #{path}"
end

# Here comes the woo woo part!  The text for this comes off of
# cafeastrology.com!

case path
when 1
  puts "One is the leader.  The number one indicates the ability to
  stand alone and is a strong vibration.  Ruled by the Sun.
  Keywords: independent, creative, original, ambitious, determined,
  self-assured.  If expressed negatively: arrogant, stubborn,
  impatient, self-centered.
  As lovers: Number One takes the lead in love.  Love and/or the
  chase is of utmost importance to these lovers.  There can be
  self-centeredness, however. These lovers are willing to experiment,
  and they can be quite exciting--they can also require a lot of
  excitement because they can bore easily."
when 2
  puts "This is the mediator and peace-lover.  The number two
  indicates the desire for harmony.  It is a gentle, considerate, and
  sensitive vibration.  Ruled by the Moon.
  Keywords: diplomatic, warm, peaceful, sensitive, If expressed
  negatively: too independent, manipulative, passive-aggressive.
  As lovers: Number Twos will bend over backwards to keep a
  relationship running smoothly.  They offer emotional security to
  their lovers.  The number two is associated with the Moon and,
  since the Moon rules Cancer in astrology, is similar to the Cancer
  vibration."
when 3
  puts "Number Three is a sociable, friendly, and outgoing vibration.
  Kind, positive, and optimistic, Three's enjoy life and have a good
  sense of humor.  Ruled by Jupiter.
  Keywords: jovial, friendly, positive, adventurous, self-expressive.
  If expressed negatively: extravagant, scattered, superficial.
  As lovers: Number Threes are fun, energetic, and willing to
  experiment.  These lovers need space and contact with others in
  order to feel content.  If they feel confined, they will be unhappy
  and restless.  Allowed the freedom to socialize and scatter their
  energies, they are exciting and happy lovers."
when 4
  puts "Four is the worker.  Practical, with a love of detail, Fours
  are trustworthy, hard-working, and helpful.  Ruled by Uranus.
  Keywords: trustworthy, helpful, steady, logical, self-disciplined,
  problem-solving. If expressed negatively: contrary, stubborn,
  narrow.
  As lovers: Although steady and generally trustowrthy, Fours can be
  quite emotinoal and frustrated if they feel caged in.  They tend to
  need some level of confrontation in their love lives.  A
  relationship that stagnates will bring out their contrary nature.
  They love to solve problems, and if allowed to 'take on' and tackle
  predicaments, they are very loyal lovers."
when 5
  puts "Five is the freedom lover.  The number five is an
  intellectual vibration.  These are 'idea' people with a love of
  variety and the ability to adapt to most situations.  Ruled by
  Mercury.
  Keywords: adaptable, freedom-loving, romantic, resourceful, witty,
  fun-loving, curious, flexible, accommodating.  If expressed
  negatively, non-committal, irresponsible, inconsistent.
  As lovers: These lovers are genearlly attractive to the opposite
  sex, as they are adaptable, curious, and friendly.  Their wit and
  love of fun is unmistakable.  In order to be happy in love, they
  need some level of change and variety.  They also require mental
  stimulation.  They are quick to adapt to ups and downs, but when
  under-stimulated, they can be inconsistent and resisting of making
  committments."
when 6
  puts "Six is the peace lover.  The number six is a loving, stable,
  and harmonious vibration.  Ruled by Venus.
  Keywords: compassionate, stable, family-loving, trustworthy,
  domesticated.  If expressed negatively, superficial, jealous,
  possessive, unwilling to change."
when 7
  puts "Seven is the deep thinker.  The number seven is a spiritual
  vibration.  These people are not very attached to material things,
  are introspective, and generally quiet.  Ruled by Neptune.
  Keywords: unusual, introspective, intuitive, psychic, wise,
  reserved.  If expressed negatively: melancholic, odd, leaves too
  much to chance, hard to reach.
  As lovers: These lovers are a little spaced out, and sometimes hard
  to reach and to understand.  However, their disinterest in material
  things and focus on spirituality makes for interesting, if a little
  kooky, bed partners and mates.  They are intuitive, some are
  psychic, and although they can be loners at different times in
  their lives, they are often devoted partners.  They can reach
  levels of intimacy and romance beyond many people's imaginations.
  However, their goals in love may be too lofty and thus they can be
  prone to disappointment when relationships inevitably fall short of
  ideal"
when 8
  puts "Eight is the manager.  Number Eight is a strong, successful,
  and material vibration.  Ruled by Saturn.
  Keywords: ambitious, business-minded, practical, leading,
  authoritative, successful, courageous, accomplished, organized.  If
  expressed negatively: tense, narrow, materialistic, forceful.
  As lovers: These lovers take a commitment with responsibility and
  bravery. When they treat relationships life business deals,
  however, they can easily alienate partners and fall short of
  creating a tolerant and romantic atmosphere.  Eights are generally
  practical and secure and offer their mates stability and security."
when 9
  puts "Nine is the teacher.  Number Nine is a tolerant, somewhat
  impractical, and sympathetic vibration.  Ruled by Mars.
  Keywords: jack of all trades, humanitarian, sympathetic, helpful,
  emotional, tolerant, active, determined.  If expressed negatively:
  financially careless, moody, bullying, overly emotional, sullen,
  restless.
  As lovers: These lovers are involved and helpful.  Because they are
  sympathetic, they can easily be doormats.  They show their love by
  helping their partners and assuming their lover's problems.  If
  triggered, their emotions can be volcanic, and a seemingly meek
  personality can resort to bullying tactics when unhappy."
end


