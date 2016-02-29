#!/usr/bin/env ruby

class Phrase
  VERSION = 1

  def initialize(phrase)
    ### allow for commas in cramped lists
    @phrase = phrase.gsub(',', ' ')
    ### otherwise ignore punctuation
    @phrase = @phrase.gsub(/[^ '0-9A-Za-z]/, '').downcase
  end

  def word_count
    @word_hash = Hash.new(0)

    @array_of_words = @phrase.split

    @array_of_words.each do |word|
      @key = word

      ### strip outer quotation marks, while maintaining contractions
      if ((@key[0] == "'") && (@key[-1] == "'"))
        @key.slice!(0)
        @key.slice!(-1)
      end

      @word_hash[@key] += 1
    end

    return @word_hash
  end
end
