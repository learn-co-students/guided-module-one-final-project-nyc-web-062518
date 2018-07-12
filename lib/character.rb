class Character < ActiveRecord::Base
  has_many :movie_characters
  has_many :movies, through: :movie_characters
  belongs_to :actor

  def character_movies
    puts "#{self.name} appeared in:".colorize(:red)
    self.movies.each do |movie|
      puts movie.title.colorize(:red)
    end
  end

  def portrayed_by
    puts "#{self.name} was portrayed by #{self.actor.name}.".colorize(:red)
  end

  def character_details(input)
    if input == "1"
      self.character_movies
    elsif input == "2"
      self.portrayed_by
    elsif input == "3"
      self.character_clip
    elsif input == "4"
      cli = CLIapp.new
      cli.welcome_message
    else
      puts "Please select a valid option by number.".colorize(:red)
    end
  end

  def character_clip
    Launchy.open(self.clip)
  end
end
