class Movie < ActiveRecord::Base
    belongs_to :director
    has_many :movie_characters
    has_many :characters, through: :movie_characters
    has_many :movie_actors
    has_many :actors, through: :movie_actors

    def cast
      puts "#{self.title} cast:".colorize(:red)
      self.characters.each do |character|
      puts "#{character.name} was portrayed by:".colorize(:red)
      puts "#{character.actor.name}.".colorize(:red)
      end
    end

    def movie_details(input)
      #input=STDIN.gets.chomp
      if input == "1"
        puts "#{self.title} was directed by #{self.director.name}".colorize(:red)
      elsif input == "2"
        puts "#{self.title} made $#{self.box_office}.".colorize(:red)
      elsif input == "3"
        cast
      end
    end
end
