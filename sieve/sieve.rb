#!/usr/bin/env ruby

class Sieve
  def is_prime(number)
    if number == 1
      return true
    end
    2.upto(number) do |x|
      if (number % x == 0) && (number != x)
        return false
      end
    end
    return true
  end

  def set_up_sieve_of_eratosthenes(eratos_hash, size)
    @n = size
    @root_n = Math.sqrt(@n).to_i

    # Zero out the hash values.  Sieve, step #1
    eratos_hash[1] = 0
    eratos_hash[2] = 1
    4.step(@n,2) do |x|
      eratos_hash[x] = 0
    end

    # Store ones for every prime value.  Sieve, step #2
    3.step(@n,2) do |x|
      eratos_hash[x] = 1
    end

    # Store zeros for the multiples of the prime values.  Sieve, step #3
    3.step(@root_n,2) do |x|
      if is_prime(x)
        max = @n/x
        2.upto(max) do |y|
          eratos_hash[x*y] = 0
        end
      end
    end
    return eratos_hash
  end

  def initialize(number)
    @count = 0
    @hash_size = number
    @hash = Hash.new(0)

    unless (number.is_a? Integer) && (number > 0)
      raise ArgumentError
    end

    @hash = set_up_sieve_of_eratosthenes(@hash, @hash_size)
  end

  def primes
    @array_of_primes = Array.new(@hash_size)
    count = 0

    2.upto(@hash_size) do |x|
      if @hash[x] == 1
        @array_of_primes[count] = x
        count += 1
      end
    end

    return @array_of_primes.compact
  end
end
