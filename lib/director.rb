class Director < ActiveRecord::Base
  has_many :movies
  has_many :actors, through: :movies

  def director_movies
    puts "#{self.name} directed the following movies:"
    self.movies.each do |movie|
      puts movie.title
    end
  end

  def director_actors
    puts "#{self.name} has worked with:"
    self.actors.each do |actor|
      puts actor.name
    end
  end
end
