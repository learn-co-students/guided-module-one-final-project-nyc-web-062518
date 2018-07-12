
class CLIapp

  def main_menu
    puts"  ____    __    ____  _______  __        ______   ______   .___  ___.  _______
  \\   \\  /  \\  /   / |   ____||  |      /      | /  __  \\  |   \\/   | |   ____|
   \\   \\/    \\/   /  |  |__   |  |     |  ,----'|  |  |  | |  \\  /  | |  |__
    \\            /   |   __|  |  |     |  |     |  |  |  | |  |\\/|  | |   __|
     \\    /\\    /    |  |____ |  `----.|  `----.|  `--'  | |  |  |  | |  |____
      \\__/  \\__/     |_______||_______| \\______| \\______/  |__|  |__| |_______|"
    prompt = TTY::Prompt.new
    choices = ["1. Movies", "2. Actors", "3. Characters", "4. Directors"]
    user_input = prompt.select("What would you like to search for?", choices)
    user_input = user_input.split(".")[0]
  end

  def welcome_message

    puts 'Welcome to the Movie Database!'.colorize(:blue)
    input = main_menu
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
    puts "  .___  ___.   ______   ____    ____  __   _______
  |   \\/   |  /  __  \\  \\   \\  /   / |  | |   ____|
  |  \\  /  | |  |  |  |  \\   \\/   /  |  | |  |__
  |  |\\/|  | |  |  |  |   \\      /   |  | |   __|
  |  |  |  | |  `--'  |    \\    /    |  | |  |____
  |__|  |__|  \\______/      \\__/     |__| |_______|"
    prompt = TTY::Prompt.new
    choices = ["1. Jurassic Park", "2. Star Wars: A New Hope", "3. Star Wars: The Empire Strikes Back", "4. Star Wars: Return of the Jedi", "5. Back to the Future", "6. Back to the Future 2", "7. Jaws", "8. Arachnophobia"]
    user_input = prompt.select("What movie would you like to know more about?", choices)
    user_input = user_input.split(". ")[1]
        movie = Movie.where("title LIKE ?", "%#{user_input}%")[0]
        input = nil
      while input != "5"
        input = movie_detail_select
        movie.movie_details(input)
      end
  end

  def movie_detail_select
    prompt = TTY::Prompt.new
    choices = ["1. Who directed this movie?", "2. What was this movie\'s box office?", "3. What was this movie\'s cast?", "4. Watch this movie\'s trailer", "5. Return to the main menu"]
    user_input = prompt.select("What would you like to know?", choices)
    user_input = user_input.split(".")[0]
  end

  def actor_search
    puts "       ___        ______ .___________.  ______   .______
      /   \\      /      ||           | /  __  \\  |   _  \\
     /  ^  \\    |  ,----'`---|  |----`|  |  |  | |  |_)  |
    /  /_\\  \\   |  |         |  |     |  |  |  | |      /
   /  _____  \\  |  `----.    |  |     |  `--'  | |  |\\  \\----.
  /__/     \\__\\  \\______|    |__|      \\______/  | _| `._____|"
    prompt = TTY::Prompt.new
    choices = ["1. Michael J Fox", "2. Carrie Fisher", "3. Harrison Ford", "4. Mark Hamill", "5. Christopher Lloyd",
    "6. Roy Scheider", "7. Robert Shaw", "8. John Goodman", "9. Jeff Daniels", "10. Jeff Goldblum",
    "11. Laura Dern", "12. Sam Neill"]
    user_input = prompt.select("What actor would you like to know more about?", choices)
    user_input = user_input.split(". ")[1]
    actor = Actor.where("name LIKE ?", "%#{user_input}%")[0]
    input = nil
    while input != "5"
      input = actor_detail_select
      actor.actor_details(input)
    end
  end

  def actor_detail_select
    prompt = TTY::Prompt.new
    choices = ["1. What movie has this actor been in?", "2. What director(s) has this actor with?", "3. What characters has this actor portrayed?", "4. See this actor\'s Wikipedia Page", "5. Return to the main menu"]
    user_input = prompt.select("What would you like to know?", choices)
    user_input = user_input.split(".")[0]
  end

  def character_search

puts "    ______  __    __  .______
   /      ||  |  |  | |   _  \\
  |  ,----'|  |__|  | |  |_)  |
  |  |     |   __   | |      /
  |  `----.|  |  |  | |  |\\  \\----.
   \\______||__|  |__| | _| `._____|"
    prompt = TTY::Prompt.new
    choices = ["1. Luke Skywalker", "2. Han Solo", "3. Princess Leia", "4. Marty", "5. Doc",
      "6. Delbert McClintock", "7.Ross Jennings", "8. Martin Brody", "9. Quint", "10. Ian Malcolm",
      "11. Ellie Sattler", "12. Alan Grant"]
    user_input = prompt.select("What character would you like to know more about?", choices)
    user_input = user_input.split(". ")[1]
    character = Character.where("name LIKE ?", "%#{user_input}%")[0]
    input = nil
    while input != "4"
      input = character_detail_select
      character.character_details(input)
    end
  end

  def character_detail_select
    prompt = TTY::Prompt.new
    choices = ["1. What movie(s) was this character from?", "2. Who was this character portrayed by?", "3. See a clip of this character.", "4. Return to the main menu"]
    user_input = prompt.select("What would you like to know?", choices)
    user_input = user_input.split(".")[0]

  end

  def director_search
    puts "
   _______   __  .______
  |       \\ |  | |   _  \\
  |  .--.  ||  | |  |_)  |
  |  |  |  ||  | |      /
  |  '--'  ||  | |  |\\  \\----.
  |_______/ |__| | _| `._____|"
    prompt = TTY::Prompt.new
    choices = ["1. Steven Spielberg", "2. Frank Marshall", "3. George Lucas", "4. Robert Zemeckis"]
    user_input = prompt.select("What director would you like to know more about?", choices)
    user_input = user_input.split(". ")[1]
    director = Director.where("name LIKE ?", "%#{user_input}%")[0]
    input = nil
    while input != "6"
      input = director_detail_select
      director.director_details(input)
    end
    # puts "Please enter the name of a director you'd like to search for.".colorize(:blue)
    # input = STDIN.gets.chomp
    #
    # return_to_menu(input)
    # director = Director.where("name LIKE ?", "%#{input}%")[0]
    #
    # # binding.pry
    # while input != "menu"
    #   puts "1. What movies has this director made?".colorize(:blue)
    #   puts "2. What is this director's total box office?".colorize(:blue)
    #   puts "3. What actors has this director worked with?".colorize(:blue)
    #   puts "4. Has this director won an Academy Award?".colorize(:blue)
    #   puts "5. Watch an interview with this director.".colorize(:blue)
    #   puts "Please select a query by number.".colorize(:blue)
    #   puts "Type menu to return to the menu.".colorize(:blue)
    #   choice = STDIN.gets.chomp
    #   return_to_menu(choice)
    #   director.director_details(choice)
    # end
  end

def director_detail_select
  prompt = TTY::Prompt.new
  choices = ["1. What movies has this director made?", "2. What is this director\'s total box office?", "3. What actors has this director worked with?", "4. Has this director won an Academy Award?", "5. Watch an interview with this director.", "6. Return to the main menu."]
  user_input = prompt.select("What would you like to know?", choices)
  user_input = user_input.split(".")[0]
end

  def return_to_menu(input)
    if input == "menu"
      welcome_message
    end
  end

end
