class Staff < User
  has_many :microposts
  has_many :years # teachers teach on more than one class/year
  belongs_to :subject # a subject has more than one teacher...
  has_many :subjects # and vice versa.
end
