class Subject < ActiveRecord::Base
  belongs_to :year
  belongs_to :user
  #has_many :staffs # a subject can have more than one teacher.: unnecessary.
  belongs_to :staff #...and a teacher can have more than one subject.
  has_many :years
  has_many :staffs
end
