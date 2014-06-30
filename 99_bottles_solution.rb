loop do
  puts
  puts "Tell me how many times to sing"
  command = gets.chomp

  if command == ""
    puts "I need to know how many bottles to sing!"
    next
  end

  unless command =~ /sing -?\d+/
    puts "You did not tell me correct: Please type 'sing <number>'"
    exit(1)
  end

  number_of_times_to_sing = command.scan(/-?\d+/).first.to_i

  if number_of_times_to_sing < 1
    puts "You did not enter a positive number!"
    next
  end

  1.upto(number_of_times_to_sing) do |current_number|
    puts "#{current_number} bottles of beer on the wall"
  end
end
