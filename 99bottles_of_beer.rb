=begin
Write a program that prints out verses of "99 bottles of beer on the wall", according to the following rules:

* The user must type "sing 88", where 88 is any positive number
* If the user runs the program without typing anything, print "I need to know how many bottles to sing!"
* If the user runs the program and specifies a verse with "sing <number>", print all the lines from the song starting at that verse
* If the user types anything but "sing <number>", show an error and exit
=end

puts "lets sing a song. Tell me what to sing (ie: 'sing 88'):"

instructions = gets.chomp()
starting_number = instructions.delete("sing ")

while instructions == ""
  puts "I need to know how many bottles to sing"
  instructions = gets.chomp()
  starting_number = instructions.delete("sing ")
end

if instructions != "sing #{starting_number}"
  puts "Sorry you didn't type it correctly."

else
  puts "Here goes:"
  starting_number.to_i.downto(1) do |number|
    puts "#{number} bottles of beer on the wall, \n#{number} bottles of beer.\nTake one down pass it around,\n#{number-1} bottles of beer on the wall."
    puts
  end

end
