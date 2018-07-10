class CLIapp
  def welcome_message
    puts "Welcome to the Movie Production App!"
    puts "In this database, you can search for:"
    puts "1. Movies"
    puts "2. Actors"
    puts "3. Characters"
    puts "Please select a category by number or type 'q' to exit."
  end

  def process_input
    input = gets.chomp
    if input == "1"
      movie_search
    elsif input == "2"
      actor_search
    elsif input == "3"
      character_search
    elsif input == "q"
      quit
    else
      puts "Please select a category by number."
    end
  end

  def movie_search
    puts "Please enter the name of a movie you'd like to search for"
    input = STDIN.gets.chomp
    movie = Movie.where("title LIKE ?", "%#{input}%")[0]
    puts "What would you like to know?"
    puts "1. Who directed this movie?"
    puts "2. What was this movie's box office?"
    puts "3. What was this movie's cast?"
    movie.movie_details
  end

  def actor_search
    puts "Please enter the name of the actor you'd like to search for"
    input = STDIN.gets.chomp
    actor = Actor.where("name LIKE ?", "%#{input}%")[0]
    puts "What would you like to know?"
    puts "1. What movies has this actor been in?"
    puts "2. What directors has this actor worked with?"
    puts "3. What characters has this actor portrayed?"
    choice = STDIN.get.chomp
      if choice == "1"
        actor.actor_movies
      elsif choice == "2"
        actor.actor_directors
      elsif choice == "3"
        actor.actor_characters
      end
  end

end
