class Movie < ActiveRecord::Base
    belongs_to :director
    has_many :movie_characters
    has_many :characters, through: :movie_characters
    has_many :movie_actors
    has_many :actors, through: :movie_actors

    def cast
      puts "#{self.title} cast:"
      self.characters.each do |character|
      puts "#{character.name} was portrayed by:"
      puts "#{character.actor.name}."
      end
    end

    def movie_details
      input=STDIN.gets.chomp
      if input == "1"
        "#{self.title} was directed by #{self.director.name}"
      elsif input == "2"
        "#{self.title} made #{self.box_office}."
      elsif input == "3"
        cast
      end
    end
end
