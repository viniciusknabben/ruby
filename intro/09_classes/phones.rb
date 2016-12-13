#!/usr/bin/ruby -w

require "date"

class Phone
  # Your code goes here

  def initialize(phone_hash)
    @brand = phone_hash[:brand]
    @model = phone_hash[:model]
    @os = phone_hash[:operating_system]
    @release_date = phone_hash[:release_date]
  end

  def brand
    @brand
  end

  def model
    @model
  end

  def os
    @os
  end

  def release_date
    @release_date
  end

end

phones = [
  {
    :brand              => "Apple", 
    :model              => "iPhone 1st gen", 
    :operating_system   => "iPhone OS 1.0", 
    :release_date       => Date.new(2007, 6, 29)
  },
  {
    :brand              => "Google", 
    :model              => "Nexus One", 
    :operating_system   => "Android 2.1 Eclair", 
    :release_date       => Date.new(2010, 1, 5)
  },
  {
    :brand              => "Samsung", 
    :model              => "Galaxy S", 
    :operating_system   => "Android 2.3.6 Gingerbread", 
    :release_date       => Date.new(2010, 6, 4)
  }
]

new_phones = []

# Your code goes here

phone1 = Phone.new(phones[0])
phone2 = Phone.new(phones[1])
phone3 = Phone.new(phones[2])

new_phones << phone1 << phone2 << phone3

puts "Phones: "
new_phones.each do |p|

  puts " "
  puts "Brand: #{p.brand}"
  puts "Model: #{p.model}"
  puts "OS: #{p.os}"
  puts "Release date: #{p.release_date}"
  puts " "
  puts "-------------------"
end

puts phone1.respond_to?("model",include_private=false)