#!/usr/bin/ruby -w

# Height in meters
towers = [
  { :name => "Berliner Fernsehturm", :height => 368.0 }, 
  { :name => "Canton Tower", :height => 600.0 }, 
  { :name => "Eiffel Tower", :height => 324.0 }, 
  { :name => "Tokyo Tower", :height => 332.6 },  
  { :name => "Stratosphere Tower", :height => 350.2 } 
]

factor = 100/2.54   # Converts centimeters to inches

conversion = lambda do |x|
  ih = x[:height]*factor.round(1) # convert the height from meter to inches and round it
  puts "Tower #{x[:name]} is #{ih} inches high"
end

# Your code goes here

towers_sort_desc = towers.sort_by { |hsh| hsh[:height] }
towers_sort_desc.reverse!

towers_sort_desc.each(&conversion)