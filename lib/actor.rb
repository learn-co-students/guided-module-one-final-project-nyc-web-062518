class Actor < ActiveRecord::Base
  has_many :movie_actors
  has_many :movies, through: :movie_actors
  has_many :characters

  def actor_movies
    puts "#{self.name} has appeared in:"
    self.movies.each do |movie|
      puts movie.title
    end
  end

  def actor_directors
    puts "#{self.name} has worked with:"
    directors = []
    self.movies.each do |movie|
      directors << movie.director.name
    end
    directors.uniq.each do |director|
      puts director.name
    end
  end

  def actor_characters
    puts "#{self.name} has portrayed the following characters:"
      self.characters.each do |character|
        puts character.name
      end
  end


end
