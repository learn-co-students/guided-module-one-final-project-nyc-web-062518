old_logger = ActiveRecord::Base.logger
ActiveRecord::Base.logger = nil
class MovieActor < ActiveRecord::Base
  belongs_to :actor
  belongs_to :movie
end
