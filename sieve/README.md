# Sieve

Write a program that uses the Sieve of Eratosthenes to find all the primes from 2 up to a given number.

The Sieve of Eratosthenes is a simple, ancient algorithm for finding all
prime numbers up to any given limit. It does so by iteratively marking as
composite (i.e. not prime) the multiples of each prime,
starting with the multiples of 2.

Create your range, starting at two and continuing up to and including the given limit. (i.e. [2, limit])

The algorithm consists of repeating the following over and over:

- take the next available unmarked number in your list (it is prime)
- mark all the multiples of that number (they are not prime)

Repeat until you have processed each number in your range.

When the algorithm terminates, all the numbers in the list that have not
been marked are prime.

The wikipedia article has a useful graphic that explains the algorithm:
https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes

Notice that this is a very specific algorithm, and the tests don't check
that you've implemented the algorithm, only that you've come up with the
correct list of primes.

* * * *

For installation and learning resources, refer to the
[exercism help page](http://exercism.io/languages/ruby).

For running the tests provided, you will need the Minitest gem. Open a
terminal window and run the following command to install minitest:

    gem install minitest

If you would like color output, you can `require 'minitest/pride'` in
the test file, or note the alternative instruction, below, for running
the test file.

In order to run the test, you can run the test file from the exercise
directory. For example, if the test suite is called
`hello_world_test.rb`, you can run the following command:

    ruby hello_world_test.rb

To include color from the command line:

    ruby -rminitest/pride hello_world_test.rb

The test files may have the execution bit set so you may also be able to
run it like this:

    ./hello_world_test.rb


## Source

Sieve of Eratosthenes at Wikipedia [view source](http://en.wikipedia.org/wiki/Sieve_of_Eratosthenes)


## Susan's solution and observations

LOL

I used a Sieve of Eratosthenes to optimize solution for primes for the first time about 2 years ago, though I'd have to check my github history to be sure.  I ran into this when finding the 10,001st prime for one of the Euler solutions.  The straight solution was taking way too long to run and I was participating in a challenge with SeattleRB that required all solutions to take under a minute.  

All that said.  I didn't have much code to write for this one.  Also, I'd like to voice my objection.  The "nth-prime" exercise asks the coder to optimize the solution.  Since this naturally leads to the Sieve of Eratosthenes, this seems like a repeated exercise.

Ah, yes.  I did learn one thing new.  I needed to strip the nils resulting from the use of a Sieve.  I used Array.compact to do this.
