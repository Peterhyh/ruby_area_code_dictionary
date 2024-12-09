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

puts "Do you want to lookup an area code based on the city name? (Y/N)"
city_name = gets.chomp.downcase

if city_name == "y"
  puts "Which city do you want the area code for?"
  dial_book.each do |k, v|
    puts k
  end
  
  invalid_selection = true

  while invalid_selection
    puts "Enter your selection"
    user_selection = gets.chomp.downcase

    if dial_book.has_key?(user_selection)
      dial_book.each do |k, v|
        if user_selection == k
          puts "The area code for #{k}, is #{v}"
        end
      end
    invalid_selection = false
    else
      puts "Invalid selection"
    end
  end
    

elsif city_name == "n"
  puts "Goodbye now!"
else
  puts "Invalid selection"
end