dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "605",
  "evanston" => "847",
  "orlando" => "406",
  "lancaster" => "717"
}

# return all keys in dial_book
def get_city_names(dial_book)
  dial_book.keys
end

# Get area code for the user
def get_area_code(user_selection, city_list)
  city_list[user_selection]
end

loop do 
  puts "Do you want to lookup an area code based on the city name? (Y/N)"
  response = gets.chomp.downcase

  break if response != "y"
  puts "Which city do you want the area code for?"
  puts get_city_names(dial_book)

  
  puts "Enter your selection"
  user_selection = gets.chomp.downcase
  if dial_book.include?(user_selection)
    puts "The area code for #{user_selection} is #{get_area_code(user_selection, dial_book)}"
  else
    puts "You have entered an invalid choice"
  end
end