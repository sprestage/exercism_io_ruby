# Roman Numerals

Write a function to convert from normal numbers to Roman Numerals: e.g.

The Romans were a clever bunch. They conquered most of Europe and ruled
it for hundreds of years. They invented concrete and straight roads and
even bikinis. One thing they never discovered though was the number
zero. This made writing and dating extensive histories of their exploits
slightly more challenging, but the system of numbers they came up with
is still in use today. For example the BBC uses Roman numerals to date
their programmes.

The Romans wrote numbers using letters - I, V, X, L, C, D, M. (notice
these letters have lots of straight lines and are hence easy to hack
into stone tablets).

```
 1  => I
10  => X
 7  => VII
```

There is no need to be able to convert numbers larger than about 3000.
(The Romans themselves didn't tend to go any higher)

Wikipedia says: Modern Roman numerals ... are written by expressing each
digit separately starting with the left most digit and skipping any
digit with a value of zero.

To see this in practice, consider the example of 1990.

In Roman numerals 1990 is MCMXC:

1000=M
900=CM
90=XC

2008 is written as MMVIII:

2000=MM
8=VIII

See also: http://www.novaroma.org/via_romana/numbers.html


## Source

The Roman Numeral Kata [view source](http://codingdojo.org/cgi-bin/wiki.pl?KataRomanNumerals)


## Susan's notes:

I => 1
II => 2
III => 3
IV => 4
V => 5
VI => 6
IX => 9
X => 10
XVI => 16
IXX => 19
XX => 20
XXX => 30
XL => 40
L => 50
C => 100
D => 500
M => 1000

number = self
M = number div 1000
D = (number - M) div 500
C = (number - M - D) div 100
L = (number - M - D - C) div 50
X = (number - M - D - C - L) div 10
V = (number - M - D - C - L - X) div 5
I = number - M - D - C - L - X - V

M.times do
  roman_numeral = roman_numeral + "M"
end

roman_numeral = roman_numeral + "D" if D == 1

if C < 4

end
