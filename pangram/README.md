# Pangram

Determine if a sentence is a pangram.

Determine if a sentence is a pangram. A pangram (Greek: παν γράμμα, pan gramma,
"every letter") is a sentence using every letter of the alphabet at least once.
The best known English pangram is "The quick brown fox jumps over the lazy dog."

The alphabet used is ASCII, and case insensitive, from 'a' to 'z'
inclusively.

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

    ruby -r minitest/pride hello_world_test.rb

The test files may have the execution bit set so you may also be able to
run it like this:

    ./hello_world_test.rb

## Source

Wikipedia [https://en.wikipedia.org/wiki/Pangram](https://en.wikipedia.org/wiki/Pangram)

## Submitting Incomplete Problems

It's possible to submit an incomplete solution so you can see how others have completed the exercise.

## Susan's solution and observations

I worry sometimes that I'm seeing too many problems as a nail for my hash table hammer.  That said, this did seem a straightforward solution to track which ascii values were present in the string.  

I didn't need to increment the value, I could have just set it just as easily.  I chose to increment mostly to see that I could increment the value of a key value pair in place. 
