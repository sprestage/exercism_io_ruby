#!/usr/bin/env ruby

class Prime
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

  def count_primes(primes_hash, hash_size)
    @size = hash_size
    @count = 0
    1.upto(@size) do |x|
      if primes_hash[x] == 1
        @count = @count + 1
      end
    end
    return @count
  end

  def nth(number)
    @count = 0
    @hash_size = 10*number
    @hash = Hash.new(0)

    unless (number.is_a? Integer) && (number > 0)
      raise ArgumentError
    end

    until @count > number
      @hash = set_up_sieve_of_eratosthenes(@hash, @hash_size)
      @count = count_primes(@hash, @hash_size)
      @hash_size = 2 * @hash_size
    end

    count = 0
    2.upto(@hash_size) do |x|
      if count < number
        if @hash[x] == 1
          count = count + 1
        end
      else
        return (x-1)
      end
    end
  end
end
