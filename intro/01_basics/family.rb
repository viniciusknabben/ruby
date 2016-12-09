#!/usr/bin/ruby -w
# Ages of family members
mom = 48
dad = 51
john = 18
mary = 16

# Your code goes here
ages_sum = mom+dad+john+mary
result = (mom*dad)/(john-mary)

puts "Sum of ages = #{ages_sum}"
puts "Result = #{result}"

puts "Sum of ages = #{ages_sum}".reverse
puts "Result = #{result}".reverse
