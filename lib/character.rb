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

  def portrayed_by
    puts "#{self.name} was portrayed by #{self.actor.name}."
  end

  def character_details(input)
    if input == "1"
      self.character_movies
    elsif input == "2"
      self.portrayed_by
    else
      puts "Please select a valid option by number."
    end
  end
end
