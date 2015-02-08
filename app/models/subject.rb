class Subject < ActiveRecord::Base
  belongs_to :years
  has_many :years
  has_many :users, through: :years
  has_many :grades, through: :users
end
