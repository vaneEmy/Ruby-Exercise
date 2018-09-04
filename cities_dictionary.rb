mexico_cities = {
    "mexico_city" => 132,
    "aguascalientes" => 245,
    "campeche" => 378,
    "colima" => 455,
    "guanajuato" => 534,
    "nezahualcoyotl" => 65,
    "veracruz" => 73,
    "cordoba" => 83,
    "fresnillo" => 92,
    "zacatecas" => 102,
}

def displaying_cities(cities)
    cities.each_key { |key| puts "Ciudad #{key}" }
end

def look_up_city(city_name, cities)
    cities.has_key?(city_name)
end

def look_up_area_code(city_name, cities)
    city_code =  cities.fetch(city_name)
end

loop do
    puts "Do you want to look up a area code base on a city name (Y/N)?"
    answer = gets.chomp
    
    if answer != 'Y' 
        break        
    end
    
    puts "Which city do you want the area code?"
    displaying_cities(mexico_cities)
    code = gets.chomp
    
    city_available = look_up_city(code, mexico_cities)
    
    if city_available
         puts "The code is: ", look_up_area_code(code, mexico_cities) 
    else
        puts "The city is not available"
    end
end