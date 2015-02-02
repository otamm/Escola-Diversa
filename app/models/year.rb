class Year < ActiveRecord::Base
  has_many :users, :subjects, :schedules
end
