class Robot
  # Your code goes here
  def jumnp
  	puts "Voop!!!"
  end

  def punch
  	puts "Pow !"
  end

  def kick
  	puts "Bang !"
  end

  def defend
  	puts "Stand guard !"
  end

  def special
  	puts "Self Explosion!"
  end

end

class Ultron < Robot
  # Your code goes here
  def blast
  	puts "Boom!"
  end

  def defend 
  	#overrides parent
  	puts "Activate energy shield"
  end

  def special
  	puts "Flamethrower!!!"
  end
end

class MegaMan < Robot
  # Your code goes here
  def fireball
  	puts "Kabummm"
  end

  def kick
  	puts "Pow! Pow! Pow!"
  end

  def special
  	puts "SMASH!!"
  end

end

class Glados < Robot
  # Your code goes here
  def invisible
  	puts "Try to catch me"
  end

  def backstab
  	puts "Slash"
  end

  def heal
  	puts "Self Repairing ..."
  end
end

robot1 = Ultron.new
robot2 = MegaMan.new
robot3 = Glados.new
