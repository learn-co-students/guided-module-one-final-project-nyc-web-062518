require_relative '../config/environment.rb'
prompt = TTY::Prompt.new

movies = "1. Learn more about movies"
directors = "2. Learn more about Directors"
actors = "3. Learn more about Actors"
prompt.select("What would you like to do?", %w(movies directors actors))
