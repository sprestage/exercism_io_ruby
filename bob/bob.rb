#!/usr/bin/env ruby

class Bob
  def hey(remark)
    @remark = remark
    if @remark.gsub(/[^'0-9A-Za-z]/, '') == ""
      return "Fine. Be that way!"
    elsif @remark.gsub(' ','') == ""
      return "Fine. Be that way!"
    elsif (@remark == @remark.upcase) && !(@remark == @remark.downcase)
      return "Whoa, chill out!"
    elsif @remark.slice(-1) == "?"
      return "Sure."
    else
        return "Whatever."
    end
  end
end
