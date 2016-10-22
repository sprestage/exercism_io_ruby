#!/usr/bin/env ruby

class Array
  VERSION = 1

  def accumulate(&block)
    result = []
    self.each { |element| result << block.call(element) }
    result
  end
end
