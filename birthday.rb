# Write a program that helps users find the birth date and age of a person.
# The program should:
#
# * Prompt the user for a name
# * Print that person's name and birth date and age based on the data in the
# birthday_data.csv file

puts "Input users name (first name, last name"
persons_name = gets.chomp()
first_name, last_name = persons_name.split

#cat birthday_data.csv > grep "Dean"

 file = File.open("birthday_data.csv", "r")

  file.each_line do | line |
    if line.include?(persons_name)
      info_array = line.split(", ")
      puts info_array[0] + info_array[1] + info_array[2]
    end
  end



file.close

