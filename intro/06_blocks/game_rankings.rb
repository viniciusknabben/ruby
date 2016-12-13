# Top 10 Nintendo 64 games from Gamerankings

game_rankings = {
  "The Legend of Zelda: Ocarina of Time"    => 0.9754, 
  "Super Mario 64"                          => 0.9641, 
  "GoldenEye 007"                           => 0.9470, 
  "Perfect Dark"                            => 0.9455, 
  "The Legend of Zelda: Majora's Mask"      => 0.9195, 
  "1080: TenEighty Snowboarding"            => 0.8960, 
  "Conker's Bad Fur Day"                    => 0.8928, 
  "Excitebike 64"                           => 0.8907, 
  "Turok 2: Seeds of Evil"                  => 0.8896, 
  "Paper Mario"                             => 0.8881
}

# Your code goes here
avg = 0

game_rankings.each do |key,value| 
  avg += value
end

avg /= game_rankings.length 

puts "The gameranking average value is #{avg}"

games = game_rankings.select { |key,value| value > avg }

puts "Games with score above average are:"

games.each do |k,v| 
  puts "#{k} with score: #{v}" 
end