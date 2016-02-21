#!/usr/bin/env ruby

class Year
  VERSION = 1

  def self.leap?(year)
    @year = year

    return TRUE if @year % 400 == 0
    return FALSE if @year % 100 == 0
    return TRUE if @year % 4 == 0
  end

end
