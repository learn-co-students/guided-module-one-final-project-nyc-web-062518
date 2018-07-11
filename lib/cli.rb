class CLIapp


  def welcome_message
    puts 'Welcome to the Movie Database!'.colorize(:blue)
    puts "In this database, you can search for:".colorize(:blue)
    puts "1. Movies".colorize(:blue)
    puts "2. Actors".colorize(:blue)
    puts "3. Characters".colorize(:blue)
    puts "4. Directors".colorize(:blue)
    puts "Please select a category by number or type 'q' to exit.".colorize(:blue)
    puts "Type 'menu' to return to this page.".colorize(:blue)
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
        puts "Please select a category by number.".colorize(:blue)
      end
  end

  def movie_search
    puts "Please enter the name of a movie you'd like to search for".colorize(:blue)

    input = STDIN.gets.chomp

        return_to_menu(input)
        movie = Movie.where("title LIKE ?", "%#{input}%")[0]
      while input != "menu"
        #binding.pry
        puts "What would you like to know?".colorize(:blue)
        puts "1. Who directed this movie?".colorize(:blue)
        puts "2. What was this movie's box office?".colorize(:blue)
        puts "3. What was this movie's cast?".colorize(:blue)
        puts "4. Watch this movie's trailer".colorize(:blue)
        puts "Please select a query by number.".colorize(:blue)
        puts "Type menu to return to the menu.".colorize(:blue)
        input = STDIN.gets.chomp
        return_to_menu(input)
        movie.movie_details(input)
      end


  end

  def actor_search
    puts "Please enter the name of the actor you'd like to search for".colorize(:blue)
    input = STDIN.gets.chomp

    return_to_menu(input)
    actor = Actor.where("name LIKE ?", "%#{input}%")[0]
    while input != "menu"
      puts "What would you like to know?".colorize(:blue)
      puts "1. What movies has this actor been in?".colorize(:blue)
      puts "2. What directors has this actor worked with?".colorize(:blue)
      puts "3. What characters has this actor portrayed?".colorize(:blue)
      puts "Please select a query by number.".colorize(:blue)
      puts "Type menu to return to the menu.".colorize(:blue)
      choice = STDIN.gets.chomp
      return_to_menu(choice)
      actor.actor_details(choice)
    end
  end

  def character_search
    puts "Please enter the name of a character you'd like to search for.".colorize(:blue)
    input = STDIN.gets.chomp

    return_to_menu(input)
    character = Character.where("name LIKE ?", "%#{input}%")[0]

    while input != "menu"
      puts "What would you like to know?".colorize(:blue)
      puts "1. What movies did this character appear in?".colorize(:blue)
      puts "2. Who portrayed this character?".colorize(:blue)
      puts "Please select a query by number.".colorize(:blue)
      puts "Type menu to return to the menu.".colorize(:blue)
      choice = STDIN.gets.chomp
      return_to_menu(choice)
      character.character_details(choice)
    end
  end

  def director_search
    puts "Please enter the name of a director you'd like to search for.".colorize(:blue)
    input = STDIN.gets.chomp

    return_to_menu(input)
    director = Director.where("name LIKE ?", "%#{input}%")[0]

    # binding.pry
    while input != "menu"
      puts "1. What movies has this director made?".colorize(:blue)
      puts "2. What is this director's total box office?".colorize(:blue)
      puts "3. What actors has this director worked with?".colorize(:blue)
      puts "4. Has this director won an Academy Award?".colorize(:blue)
      puts "Please select a query by number.".colorize(:blue)
      puts "Type menu to return to the menu.".colorize(:blue)
      choice = STDIN.gets.chomp
      return_to_menu(choice)
      director.director_details(choice)
    end
  end

  def return_to_menu(input)
    if input == "menu"
      welcome_message
    end
  end

end
