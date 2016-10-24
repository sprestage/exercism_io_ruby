#!/usr/bin/env ruby

class SumOfMultiples

  def initialize(*multiples)
    @multiples = multiples
    @sum_of_multiples = 0
    @hash = Hash.new(0)
  end

  def to(limit)
    @limit = limit

    # Iterate through the multiples and accumulate
    #  the resulting multiples in a hash.
    @multiples.each do |m|

      if m <= @limit
        (1...@limit).each do |x|

          if (m*x) > @limit
            break
          else
            @hash[m*x] = 1
          end

        end
      end
    end

    # Iterate through and sum the hash of multiples.
    (1...@limit).each do |i|
      if @hash[i] == 1
        @sum_of_multiples += i
      end
    end

    return @sum_of_multiples
  end

end
