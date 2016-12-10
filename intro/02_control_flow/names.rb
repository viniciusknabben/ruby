#!/usr/bin/ruby -w

# Game of Thrones characters
name1 = "Joffrey Baratheon"
name2 = "Arya Stark"
name3 = "Beric Dondarrion"
name4 = "Melisandre"

# Your code goes here

avg_lenght = (name1.length + name2.length + name3.length + name4.length) / 4

puts "the avg mane's length is #{avg_lenght}" 

# dont know why carriage retunr '\r' is not working
puts "Enter your name: "

# chomp removes '\n'
user_name = gets.chomp

puts "the length of input name is #{user_name.length}"

if user_name.length > avg_lenght
	puts "#{user_name} is bigger than avarage"
else
	puts "#{user_name} is shorter than avarage"
end