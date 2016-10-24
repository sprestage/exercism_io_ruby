#!/usr/bin/env ruby

class Pangram
  def self.is_pangram?(sentance)
    @hash = Hash.new(0)

    sentance.downcase.split("").each do |i|
      @hash[i.ord] +=1
    end

    ("a".ord..."z".ord).each do |c|
      if @hash[c] == 0
        return false
      end
    end

    return true
  end
end

module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end
