#!/usr/bin/env ruby

class Binary
  VERSION = 1

  def initialize(binary_number)
    @binary_number = binary_number

    regex = /^[01]+$/
    unless !@binary_number[regex].nil?
      raise ArgumentError
    end
  end

  def to_decimal
    @size = @binary_number.size
    @decimal_number = 0

    0.upto(@size-1) do |n|
      @binary_digit = @binary_number.slice!(-1).to_i
      @decimal_number = @decimal_number + (@binary_digit * 2**n)
    end

    return @decimal_number
  end
end
