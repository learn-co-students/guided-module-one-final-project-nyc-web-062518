class Character < ActiveRecord::Base
  has_many :movie_characters
  has_many :movies, through: :movie_characters
  belongs_to :actor

  def character_movies
    puts "#{self.name} appeared in:"
    self.movies.each do |movie|
      puts movie.title
    end
  end
end
