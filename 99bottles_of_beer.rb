puts "I'm thirsty. Let's sing a song about beer..."
prompt = puts "how many beers do you want to sing about? (ie: 'sing 75')"
sing_beer_count= gets.chomp()




if sing_beer_count == ""
  puts "I need to know how many bottles to sing"
  prompt
  sing_beer_count = gets.chomp()
end

array = sing_beer_count.split
words = array[0]#.downcae  # sing
beers = array[1].to_i  # number

if words == "sing" && beers >= 1 && array.size == 2
  beers.downto(0) {|i| puts " #{i} bottles of beer on the wall"}
else
  puts "You didn't do it right"
end



