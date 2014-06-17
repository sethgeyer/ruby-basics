# Write a program that helps users find the birth date and age of a person.
# The program should:
# Prompt the user for a name
# Print that person's name and birth date and age based on the data in the birthday_data.csv file

puts "Input user's first and last name (ie: Bob Williams) please:"
full_name = gets.chomp()
first_name, last_name = full_name.split

now = Time.now.year

file = File.open("birthday_data.csv", "r")

puts "\nHere are the details:"
file.each_line do |line|
  if line.include?(first_name) && line.include?(last_name)
    person_details = line.split(",")
    puts "#{person_details[1]} #{person_details[0]} - Age: #{(now - person_details[2][0..3].to_i)} \n"
    break
  end
 end

file.close

