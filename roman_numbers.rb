=begin
Write a program that converts numbers into [Roman numerals](http://www.rapidtables.com/convert/number/how-number-to-roman-numerals.htm).

Decimal value (v) | Roman numeral (n)
------------------|------------------
1                 | I
4                 | IV
5                 | V
9                 | IX
10                | X
40                | XL
50                | L
90                | XC
100               | C
400               | CD
500               | D
900               | CM
1000              | M


=end



print "Provide me a number:"
integer = gets.chomp().to_i

numbers_conversion= { 1000=> "M", 900=>"CM", 500=> "D", 400=> "CD", 100=> "C", 90=>"XC", 50=> "L", 40=>"XL", 10=> "X", 9=> "IV", 5=> "V", 4=> "IV", 1=> "I" }

remainder = integer
roman_numeral = ""

numbers_conversion.each do |key, value|
  numeral_count = remainder / key
  roman_numeral += value * numeral_count
  remainder = remainder % key
  break if remainder == 0
end

print "\nRoman Numeral Equivalent is:"
puts roman_numeral
