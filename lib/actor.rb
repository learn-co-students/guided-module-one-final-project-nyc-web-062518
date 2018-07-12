class Actor < ActiveRecord::Base
  has_many :movie_actors
  has_many :movies, through: :movie_actors
  has_many :characters

  def actor_movies
    puts "#{self.name} has appeared in:".colorize(:red)
    self.movies.each do |movie|
      puts movie.title.colorize(:red)
    end
  end

  def actor_directors
    puts "#{self.name} has worked with:".colorize(:red)
    directors = []
    self.movies.each do |movie|
      #binding.pry
      directors << movie.director
    end
    directors.uniq.each do |director|
      puts director.name.colorize(:red)
    end
  end

  def actor_characters
    puts "#{self.name} has portrayed the following characters:".colorize(:red)
      self.characters.each do |character|
        puts character.name.colorize(:red)
      end
  end

  def actor_wikipedia
    Launchy.open(self.wikipedia)
  end

  def actor_details(choice)
    if choice == "1"
      self.actor_movies
    elsif choice == "2"
      self.actor_directors
    elsif choice == "3"
      self.actor_characters
    elsif choice == "4"
      self.actor_wikipedia
    end
  end


end
