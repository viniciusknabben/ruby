#!/usr/bin/ruby -w

class Player
  # Your code goes here

  def initialize (player_name)
  	if player_name.is_a? String
  		@name = player_name
  		puts "Player created with name #{@name}"
  	else
  		puts "Invalid Player name"
  	end
  end

end

class Game
  # Your code goes here

  @@MAX_PLAYER_COUNT = 3

  def initialize (game_name)
  	if game_name.is_a? String
  		@game = game_name
  		@players = []
  	else
  		puts "Invalid game name"
  	end
  end

	def addPlayer (player)
		if (player.is_a?(Player)) && (@players.length < @@MAX_PLAYER_COUNT) 
			@players << player
			puts "New Player added to the game"
		else
			puts "Max Players value reached or invalid player"
		end
	end

end

game = Game.new("RPS")

players = [
  Player.new("John"), 
  Player.new("Lizzy"), 
  Player.new("Clair"), 
  Player.new("Brad"), 
  15
]

players.each { |player| game.addPlayer(player) }

#Knowladge check

puts "Variables created inside for loops are available outside its scope"