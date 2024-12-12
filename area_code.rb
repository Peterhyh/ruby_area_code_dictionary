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

# Get area code for the user
def get_area_code(user_response, city_list)
  if city_list.has_key?(user_response)
    city_list.each do |k, v|
      if user_response == k
        puts "The area code for #{k}, is #{v}"
        return false
      end
    end
  else
    puts "Invalid selection"
    return true
  end
end
loop_program = true
while loop_program
  puts "Do you want to lookup an area code based on the city name? (Y/N)"
  city_name = gets.chomp.downcase

  if city_name == "y"
    puts "Which city do you want the area code for?"
    dial_book.each do |k, v|
      puts k
    end
    
    loop = true

    while loop
      puts "Enter your selection"
      user_selection = gets.chomp.downcase
      result = get_area_code(user_selection, dial_book)
      loop = result
    end
      

  elsif city_name == "n"
    puts "Goodbye!"
    break
  else
    puts "Invalid selection"
  end
end