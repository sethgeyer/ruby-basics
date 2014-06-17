#asks user to write something
#prints "HUH?! SPEAK UP SONNY!" if user didn't type in all uppercase
#prints "NO, NOT SINCE 1944!" if the user types something in all caps
#1944 = random number between 1930 and 1950

puts "Grandma's bored. Please talk to her."
words = gets.chomp()

while words != words.upcase
  puts "HUH?! SPEAK UP SONNY!"
  puts "Huh?... can you say that again".upcase
  words = gets.chomp()
end

puts "NO, NOT SINCE #{rand(1930..1950)}!"

