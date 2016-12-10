#!/usr/bin/ruby -w

# A little bit of classic rock

lyrics = "Is this the real life?"\
         "Is this just fantasy?"\
         "Caught in a landslide,"\
         "No escape from reality."

# Your code goes here
count = 0

("a".."z").each do |val|
	if lyrics.count(val) > 0
		count+=lyrics.count(val)
		puts "The character #{val} appers #{lyrics.count(val)} times"
	end
end

("A".."Z").each do |val|
	if lyrics.count(val) > 0
		count+=lyrics.count(val)
		puts "The character #{val} appers #{lyrics.count(val)} times"
	end
end

# special characters
puts "The character #{' '} appers #{lyrics.count(' ')} times"
count+=lyrics.count(' ')
puts "The character #{'?'} appers #{lyrics.count('?')} times"
count+=lyrics.count('?')
puts "The character #{','} appers #{lyrics.count(',')} times"
count+=lyrics.count(',')
puts "The character #{'.'} appers #{lyrics.count('.')} times"
count+=lyrics.count('.')


puts count
puts lyrics.length


if count == lyrics.length
	puts "count match"
else
	puts "count not match"
end