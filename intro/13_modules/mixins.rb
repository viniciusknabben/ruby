module WingChunMixin
  # Your code goes here
  def riposte
  	puts "Riposte"
  end
end

module BoxingMixin
  # Your code goes here
  def uppercut
  	puts "Uppercut"
  end

  def block
  	puts "Block"
  end
end

module FencingMixin
  # Your code goes here
  def straight_kick
  	puts "Straght Kick"
  end
end

module JeetKuneDoMixin
  # Your code goes here
  include WingChunMixin
  include BoxingMixin
  include FencingMixin
end
