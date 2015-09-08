#!/usr/bin/env ruby

class Robot
  def initialize
    @name = ""
    self.generate_robot_name
  end

  def name
    return @name
  end

  def reset
    @name = ""
    self.generate_robot_name
  end

  def generate_robot_name
    # generate 2 random capital letters (A..Z)
    @name = @name + (0...2).map { (65 + rand(26)).chr }.join

    # generate 3 random integers (0..9)
    3.times do
      @name = @name + (rand() * 10).to_i.to_s
    end
  end

end


