#!/usr/bin/ruby -w

# Create a standard 52 card deck
# Sort card suits according to Hearts, Diamonds, Clubs, then Spades.
# Sort cards in ascending order, from 2 to Ace.

def create_deck

	deck = Array.new
	card_val = Array.new
	card_type = ["h","d","c","s"] # Hearts, Diamonds, Clubs, Spades

  (2..10).each do |i|
  	card_val << i.to_s
  end
  card_val << "J" << "Q" << "K" << "A"

  for type in card_type
  	for val in card_val
  		deck << val+type
  	end
  end

  return deck

end


card_deck = create_deck

puts card_deck[0] 	== "2h"   # 2 of Hearts
puts card_deck[8] 	== "10h"  # 10 of Hearts
puts card_deck[51] 	== "As"  # Ace of Spades
