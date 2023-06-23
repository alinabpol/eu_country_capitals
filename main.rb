europe_country_capitals = {
    "Albania" => "Tirana",
    "Andorra" => "Andorra la Vella",
    "Armenia" => "Yerevan",
    "Austria" => "Vienna",
    "Azerbaijan" => "Baku",
    "Belarus" => "Minsk",
    "Belgium" => "Brussels",
    "Bosnia and Herzegovina" => "Sarajevo",
    "Bulgaria" => "Sofia",
    "Croatia" => "Zagreb",
    "Cyprus" => "Nicosia",
    "Czech Republic" => "Prague",
    "Denmark" => "Copenhagen",
    "Estonia" => "Tallinn",
    "Finland" => "Helsinki",
    "France" => "Paris",
    "Georgia" => "Tbilisi",
    "Germany" => "Berlin",
    "Greece" => "Athens",
    "Hungary" => "Budapest",
    "Iceland" => "Reykjavik",
    "Ireland" => "Dublin",
    "Italy" => "Rome",
    "Kazakhstan" => "Nur-Sultan",
    "Kosovo" => "Pristina",
    "Latvia" => "Riga",
    "Liechtenstein" => "Vaduz",
    "Lithuania" => "Vilnius",
    "Luxembourg" => "Luxembourg City",
    "Malta" => "Valletta",
    "Moldova" => "Chisinau",
    "Monaco" => "Monaco",
    "Montenegro" => "Podgorica",
    "Netherlands" => "Amsterdam",
    "North Macedonia" => "Skopje",
    "Norway" => "Oslo",
    "Poland" => "Warsaw",
    "Portugal" => "Lisbon",
    "Romania" => "Bucharest",
    "Russia" => "Moscow",
    "San Marino" => "San Marino",
    "Serbia" => "Belgrade",
    "Slovakia" => "Bratislava",
    "Slovenia" => "Ljubljana",
    "Spain" => "Madrid",
    "Sweden" => "Stockholm",
    "Switzerland" => "Bern",
    "Turkey" => "Ankara",
    "Ukraine" => "Kyiv",
    "United Kingdom" => "London",
    "Vatican City" => "Vatican City"
  }


  loop do

    puts "====== Welcome to the Learn European Country Capitals! ========\n   Start the game by answering the questions below!\n============== To quit, press 'q' ======================"
    
    questions_counter = { true => 0, false => 0 }
    asked_countries = []
    score = 0
    
    countries = europe_country_capitals.keys
    
    while asked_countries.length < countries.length
        country = countries.sample

        #check wether country has been asked before
        unless asked_countries.include?(country)
          asked_countries.push(country)
          puts "What is the capital of #{country}?"
          answer = gets.chomp
    
          break if answer.downcase == 'q'

          if answer.downcase == europe_country_capitals[country].downcase
            puts "Correct answer!"
            questions_counter[true] += 1
            score += 1
            puts("Total of countries answered correctly: #{questions_counter[true]}")
          else
            puts "Incorrect answer!"
            questions_counter[false] += 1
          end
        end
      end

    
    
    
    break if input.downcase == 'q'
  end

