#!/usr/ruby -w

require "logger"
require_relative "mixins"

module Logging
  # Provided for your convenience
  def logger
    Logging.logger
  end

  def self.logger
    @logger ||= Logger.new(STDOUT)
  end
end

class Fighter
  # Your code goes here
  
  include JeetKuneDoMixin
  include Logging

  def initialize (name)
  	@fighter_name = name if name.is_a? String
  end


end

fighter = Fighter.new("Bruce Lee")
fighter.uppercut
fighter.block
fighter.riposte
fighter.straight_kick
