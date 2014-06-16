#asks user to write something

#prints "HUH?! SPEAK UP SONNY!" if user didn't type in all uppercase

#prints "NO, NOT SINCE 1944!" if the user types something in all caps

#1944 = random number between 1930 and 1950

puts "You're visiting your grandma. Please talk to her."
salutation = gets.chomp()

while salutation != salutation.upcase
  puts "HUH?! SPEAK UP SONNY!"
  puts "Please try again, louder this time."
  salutation = gets.chomp()

end

  puts "NO, NOT SINCE #{rand(1930..1950)}!"

