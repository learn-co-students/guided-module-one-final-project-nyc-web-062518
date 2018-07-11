class CLIapp
  def return_menu

    welcome_message
    movie_search
    actor_search

  end

  def welcome_message
    puts "Welcome to the Movie Production App!"
    puts "In this database, you can search for:"
    puts "1. Movies"
    puts "2. Actors"
    puts "3. Characters"
    puts "4. Directors"
    puts "Please select a category by number or type 'q' to exit."
    puts "Type 'menu' to return to this page."
    input = STDIN.gets.chomp
    process_input(input)
  end

  def process_input(input)
      if input == "1"
        movie_search
      elsif input == "2"
        actor_search
      elsif input == "3"
        character_search
      elsif input == "4"
        director_search
      elsif input == "q"
        quit
      elsif input == "menu"
        welcome_message
      else
        puts "Please select a category by number."
      end
  end

  def movie_search
    puts "Please enter the name of a movie you'd like to search for"

    input = STDIN.gets.chomp

        return_to_menu(input)
        movie = Movie.where("title LIKE ?", "%#{input}%")[0]
      while input != "menu"
        #binding.pry
        puts "What would you like to know?"
        puts "1. Who directed this movie?"
        puts "2. What was this movie's box office?"
        puts "3. What was this movie's cast?"
        puts "Please select a query by number."
        puts "Type menu to return to the menu."
        input = STDIN.gets.chomp
        return_to_menu(input)
        movie.movie_details(input)
      end


  end

  def actor_search
    puts "Please enter the name of the actor you'd like to search for"
    input = STDIN.gets.chomp

    return_to_menu(input)
    actor = Actor.where("name LIKE ?", "%#{input}%")[0]
    while input != "menu"
      puts "What would you like to know?"
      puts "1. What movies has this actor been in?"
      puts "2. What directors has this actor worked with?"
      puts "3. What characters has this actor portrayed?"
      puts "Please select a query by number."
      puts "Type menu to return to the menu."
      choice = STDIN.gets.chomp
      return_to_menu(choice)
      actor.actor_details(choice)
    end
  end

  def character_search
    puts "Please enter the name of a character you'd like to search for."
    input = STDIN.gets.chomp

    return_to_menu(input)
    character = Character.where("name LIKE ?", "%#{input}%")[0]

    while input != "menu"
      puts "What would you like to know?"
      puts "1. What movies did this character appear in?"
      puts "2. Who portrayed this character?"
      puts "Please select a query by number."
      puts "Type menu to return to the menu."
      choice = STDIN.gets.chomp
      return_to_menu(choice)
      character.character_details(choice)
    end
  end

  def director_search
    puts "Please enter the name of a director you'd like to search for."
    input = STDIN.gets.chomp

    return_to_menu(input)
    director = Director.where("name LIKE ?", "%#{input}%")[0]

    # binding.pry
    while input != "menu"
      puts "1. What movies has this director made?"
      puts "2. What is this director's total box office?"
      puts "3. What actors has this director worked with?"
      puts "4. Has this director won an Academy Award?"
      puts "Please select a query by number."
      puts "Type menu to return to the menu."
      choice = STDIN.gets.chomp
      return_to_menu(choice)
      director.director_details(choice)
    end
    # if input == "menu"
    #   welcome_message
    # else
    #   director = Director.where("name LIKE ?", "%#{input}%")[0]
    #   puts "1. What movies has this director made?"
    #   puts "2. What is this director's total box office?"
    #   puts "3. What actors has this director worked with?"
    #   puts "4. Has this director won an Academy Award?"
    #   choice = STDIN.gets.chomp
    #   director.director_details(choice)
    # end
  end

  def return_to_menu(input)
    if input == "menu"
      welcome_message
    end
  end

end
