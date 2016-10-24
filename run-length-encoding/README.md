# Run Length Encoding

Implement run-length encoding and decoding.

Run-length encoding (RLE) is a simple form of data compression, where runs
(consecutive data elements) are replaced by just one data value and count.

For example we can represent the original 53 characters with only 13.

```
"WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB"  ->  "12WB12W3B24WB"
```

RLE allows the original data to be perfectly reconstructed from
the compressed data, which makes it a lossless data compression.

```
"AABCCCDEEEE"  ->  "2AB3CD4E"  ->  "AABCCCDEEEE"
```

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

Wikipedia [https://en.wikipedia.org/wiki/Run-length_encoding](https://en.wikipedia.org/wiki/Run-length_encoding)

## Submitting Incomplete Problems

It's possible to submit an incomplete solution so you can see how others have completed the exercise.

## Susan's solution and observations

My solution felt kinda dissatisfying in that it was an if-else-end slog through logic.  That said, it was pretty straightforward.  The key was to track three characters at a time to get the output string correct.  So I had a current character, a previous character, and a second previous character.  I'd check to see it the character was a digit or not and then handle accordingly.  I've only set up for repeating digits up to 99.  If there are repeating digits of 100 or more, I'll need to increase the number of characters that I am tracking.
