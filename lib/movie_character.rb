old_logger = ActiveRecord::Base.logger
ActiveRecord::Base.logger = nil
class MovieCharacter < ActiveRecord::Base
  belongs_to :movie
  belongs_to :character
end
