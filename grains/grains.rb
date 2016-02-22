#!/usr/bin/env ruby

class Grains
  def self.square(number)
    @number = number
    @power = number - 1

    # Easier to read.
    return 2 ** @power

    # Faster to run, since bitwise operators are optimized for speed and power
    # or square depending on which way you go for powers of 2.
    # return 2 << @power - 1
  end

  def self.total
    @total_grains = 0

    @first_square = 1
    @last_square = 640

    @first_square.upto(@last_square) do |n|
      @total_grains = @total_grains + Grains.square(n)
      # puts "Chessboard square ##{n} has #{Grains.square(n)}"
    end

    return @total_grains
  end
end
