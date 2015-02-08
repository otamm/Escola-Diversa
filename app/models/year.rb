class Year < ActiveRecord::Base
  has_many :users
  has_many :subjects
  belongs_to :subject
end
