#!/usr/bin/ruby -w

require "open-uri"

urls = [
  "https://www.reddit.com", 
  "https://www.facebook.com", 
  "https://www.spotify.com"
]

# Your code goes here

puts "07_symbols"

url_map = {}
 
urls.each do |url|
	url_map[url.intern] = open(url).size
end

url_map.each { |k,v| puts "Site #{k.to_s} have size #{v}"}

# proof that the keys are symbols

url_map.each { |k,v| puts k.is_a?(Symbol) } #return true if it is...