# Binary

Write a program that will convert a binary number, represented as a string (e.g. '101010'), to its decimal equivalent using first principles

Implement binary to decimal conversion. Given a binary input
string, your program should produce a decimal output. The
program should handle invalid inputs.

## Note
- Implement the conversion yourself.
  Do not use something else to perform the conversion for you.

## About Binary (Base-2)
Decimal is a base-10 system.

A number 23 in base 10 notation can be understood
as a linear combination of powers of 10:

- The rightmost digit gets multiplied by 10^0 = 1
- The next number gets multiplied by 10^1 = 10
- ...
- The *n*<&nbsp>th number gets multiplied by 10^*(n-1)*.
- All these values are summed.

So: `23 => 2*10^1 + 3*10^0 => 2*10 + 3*1 = 23 base 10`

Binary is similar, but uses powers of 2 rather than powers of 10.

So: `101 => 1*2^2 + 0*2^1 + 1*2^0 => 1*4 + 0*2 + 1*1 => 4 + 1 => 5 base 10`.

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

All of Computer Science [view source](http://www.wolframalpha.com/input/?i=binary&a=*C.binary-_*MathWorld-)


## Susan's solution and observations

Pretty straightforward.  Lessons learned from other exercises that I used again here were:

1. Using REGEX to limit what is allowed for input and throwing an ArgumentError otherwise.  
2. Using String!.slice(-1) to capture each lowest binary digit and remove it from the binary string (then translating it into decimal in a loop using powers of 2).  I have loved playing with binary numbers on my fingers since I was 10 years old, so this was an old exercise in many ways for me.  
