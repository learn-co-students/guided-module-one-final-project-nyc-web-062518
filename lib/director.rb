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

  def oscar
    if oscar_winner
      puts "#{self.name} has won an Academy Award."
    else
      puts "#{self.name} has not won an Academy Award"
    end
  end

  def total_box_office
    total = 0
    self.movies.each do |movie|
      total += movie.box_office
    end
    puts "#{self.name}\'s movies have earned $#{total}"
  end

  def director_details(input)
    if input == "1"
      self.director_movies
    elsif input == "2"
      self.total_box_office
    elsif input == "3"
      self.director_actors
    elsif input == "4"
      self.oscar
    else
      puts "Enter valid choice by number."
    end
  end
end
