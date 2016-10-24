#!/usr/bin/env ruby

class RunLengthEncoding

  def self.isdigit(str)
    !str.match(/[^1-9]/)
  end

  def self.encode(input)
    @previous_c = ""
    @current_c = ""
    @penultimate_c = ""
    @count = 1
    @final_count = 1
    @output = ""

    input.split("").each do |c|
      @current_c = c

      if @current_c == @previous_c
        @count += 1
      else
        unless @previous_c == ""
          if @count > 1
            @output << "#{@count.to_s}"
            @final_count = @count
            @count = 1
          end
          @output << @previous_c
        end
      end
      @penultimate_c = @previous_c
      @previous_c = @current_c
    end

    if @penultimate_c == @current_c
      if @final_count > 1
        @output << "#{@count.to_s}"
      end
    end

    @output << @previous_c

    return @output
  end

  def self.decode(input)
    @previous_c = ""
    @second_previous_c = ""
    @output = ""
    @iterations = 0

    input.split("").each do |c|

# Handle the first two characters of the input string to be decoded.
      if @second_previous_c == ""
        unless @previous_c == ""
          if isdigit(@previous_c)
            unless isdigit(c)
              (1..@previous_c.to_i).each do
                @output << c
              end
            end #if isdigit(c)
          else #if isdigit(@previous_c)
            @output << @previous_c
          end #if isdigit(@previous_c)
        end

# Handle the rest of the input string to be decoded.
      else #if @second_previous_c == ""

        if isdigit(@second_previous_c)

          if isdigit(@previous_c)
            @iterations = 10 * @second_previous_c.to_i + @previous_c.to_i
            (1..@iterations).each do
              @output << c
            end
          end

        else #isdigit(@second_previous_c)

          if isdigit(@previous_c)
            unless isdigit(c)
              (1..@previous_c.to_i).each do
                @output << c
              end
            end
          else
            @output << @previous_c
          end

        end #if isdigit(@second_previous_c)

      end #if @second_previous_c == ""

      @second_previous_c = @previous_c
      @previous_c = c

    end #each

# Handle the end of the input string to be decoded.
    if isdigit(@second_previous_c)
      if isdigit(@previous_c)
        @second_previous_c = 10 * @second_previous_c + @previous_c
      end
    else
      @output << @previous_c
    end

    return @output
  end
end

module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end
