#!/usr/bin/ruby -w

# Print out all the Fibonacci numbers from 1 to 10 in order

# Your code goes here
prev = 0
fb = 1

# with for loop

# for i in 1..10

# 	puts "#{fb}" 

# 	fb += prev
# 	prev = fb - prev 

# end

# with do
10.times do

	puts "#{fb}" 

	fb += prev
	prev = fb - prev 

end