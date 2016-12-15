#!/usr/bin/ruby -w

require "csv"

module RPG
  class Character
    attr_reader :name
    attr_reader :hit_points
    attr_reader :attack_power

    def initialize(name, hit_points, attack_power)
      @name = name
      @hit_points = hit_points.to_i
      @attack_power = attack_power.to_i
    end

    def attack
      @attack_power * rand(1..5)
    end

    def take_damage(damage)
      if @hit_points - damage > 0
        @hit_points -= damage
      else
        @hit_points = 0
      end
    end

    def is_dead
      @hit_points == 0 ? true : false
    end

    def to_s
      "#{@name}: #{@hit_points.to_s}HP,#{@attack_power}ATK"
    end
  end

  class Party
    attr_reader :characters

    def initialize
      @characters = []
    end

    def add(character)
      raise TypeError unless character.is_a?(Character)
      @characters << character
    end

    def is_defeated
      @characters.all? { |character| character.is_dead } # return true if the block never returns false or nil
    end

    def to_s
      @characters.to_s
    end
  end

  class Battle
    def initialize(hero_party, enemy_party)
      @hero_party = hero_party
      @enemy_party = enemy_party
    end

    def rand_fighter(party)
      while true
        fighter = party.characters[rand(0...party.characters.length)]
        break unless fighter.is_dead
      end
      return fighter
    end

    def duel(attacker_party,defensor_party)
      atk_char = rand_fighter(attacker_party)
      puts "Attacker: #{atk_char.name}"
      def_char = rand_fighter(defensor_party)
      puts "Opponent: #{def_char.name}"

      dmg = atk_char.attack
      def_char.take_damage(dmg)

      puts "#{atk_char.name} hits #{def_char.name} causing #{dmg.to_s} hitpoints damage"
    
    end
    
    def run
      # Your code goes here
      puts "Fight"
      while true

        puts "\t<Heroes Turn>\n"
        duel(@hero_party,@enemy_party)
        if @enemy_party.is_defeated
          puts "The Heroes won the battle, may the light shine upon us"
          break
        end

        puts "\t<Enemies Turn>\n"
        duel(@enemy_party,@hero_party)
        if @hero_party.is_defeated
          puts "Heroes defeated, the dark age has begun"
          break
        end
      end

      puts "\t<Sumary>"
      puts @hero_party.to_s
      puts " "
      puts @enemy_party.to_s

    end
  
  end
end

def convert_to_character(array)
    # Helper method
    # Your code goes here
    return RPG::Character.new(array[0],array[1],array[2])
end

hero_party = RPG::Party.new
enemy_party = RPG::Party.new

hero_file = CSV.read("heroes.csv")
hero_file.each do |line|
  hero = convert_to_character line
  puts hero.to_s
  hero_party.add(hero)
end

enemy_file = CSV.read("enemies.csv")
enemy_file.each do |line|
  enemy = convert_to_character line
  puts enemy.to_s
  enemy_party.add(enemy) 
end

battle = RPG::Battle.new(hero_party, enemy_party)

battle.run
