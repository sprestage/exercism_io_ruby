#!/usr/bin/env ruby

class FoodChain
  VERSION = 2

  FIRST_LINE = "I know an old lady who swallowed a "
  SHE_SWALLOWED = "She swallowed the "
  TO_CATCH = " to catch the "
  OPTIONAL_SPIDER_BIT = " that wriggled and jiggled and tickled inside her"

  def self.song
    @food_hash = Hash.new

    @food_hash["fly"]= "I don't know why she swallowed the fly. Perhaps she'll die.\n\n"
    @food_hash["spider"] = "It wriggled and jiggled and tickled inside her.\n"
    @food_hash["bird"] = "How absurd to swallow a bird!\n"
    @food_hash["cat"] = "Imagine that, to swallow a cat!\n"
    @food_hash["dog"] = "What a hog, to swallow a dog!\n"
    @food_hash["goat"] = "Just opened her throat and swallowed a goat!\n"
    @food_hash["cow"] = "I don\'t know how she swallowed a cow!\n"
    @food_hash["horse"] = "She\'s dead, of course!"

    @food_array = Array.new
    @index = 0
    @food_hash.each do |key, value|
      @food_array[@index] = key
      @index += 1
    end

    @song = ""
    @current_verse = ""
    @accumulated_verse = ""

    0.upto(7) do |x|
      @current_verse = ""
      @key = @food_array[x]
      @previous_food = @current_food
      @current_food = @key

      @current_verse = @current_verse + FIRST_LINE + @key + "." + "\n"
      @value = @food_hash[@key]

      @current_verse = @current_verse + @value

      if @key == "fly"
        @accumulated_verse = @value
      end

      unless @key == "horse" || @key == "fly"
        if @previous_food == "spider"
          @optional_spider_bit = OPTIONAL_SPIDER_BIT
        else
          @optional_spider_bit = ""
        end
        @new_line = SHE_SWALLOWED + @current_food + TO_CATCH + @previous_food + @optional_spider_bit + ".\n"
        @accumulated_verse = @new_line + @accumulated_verse
        @current_verse = @current_verse + @accumulated_verse
      end
      @song = @song + @current_verse
    end

    @song = @song + "\n"

    return @song
  end
end
