#!/usr/bin/env ruby

class Fixnum
  def to_roman
    number = self
    roman_numeral = ""

    thousands = (number / 1000) % 10
    hundreds = (number / 100) % 10
    tens = (number / 10) % 10
    units = number % 10

    if thousands
      case thousands
      when 1..3
        thousands.times do
          roman_numeral = roman_numeral + "M"
        end
      end
    end

    # C => 100
    # D => 500
    # M => 1000
    if hundreds
      case hundreds
      when 1..3
        hundreds.times do
          roman_numeral = roman_numeral + "C"
        end
      when 4
        roman_numeral = roman_numeral + "CD"
      when 5
        roman_numeral = roman_numeral + "D"
      when 6..8
        roman_numeral = roman_numeral + "D"
        (hundreds - 5).times do
          roman_numeral = roman_numeral + "C"
        end
      when 9
        roman_numeral = roman_numeral + "CM"
      end
    end

    # X => 10
    # L => 50
    # C => 100
    if tens
      case tens
      when 1..3
        tens.times do
          roman_numeral = roman_numeral + "X"
        end
      when 4
        roman_numeral = roman_numeral + "XL"
      when 5
        roman_numeral = roman_numeral + "L"
      when 6..8
        roman_numeral = roman_numeral + "L"
        (tens - 5).times do
          roman_numeral = roman_numeral + "X"
        end
      when 9
        roman_numeral = roman_numeral + "XC"
      end
    end

    # I => 1
    # V => 5
    # X => 10
    if units
      case units
      when 1..3
        units.times do
          roman_numeral = roman_numeral + "I"
        end
      when 4
        roman_numeral = roman_numeral + "IV"
      when 5
        roman_numeral = roman_numeral + "V"
      when 6..8
        roman_numeral = roman_numeral + "V"
        (units - 5).times do
          roman_numeral = roman_numeral + "I"
        end
      when 9
        roman_numeral = roman_numeral + "IX"
      end
    end

    return roman_numeral
  end
end


