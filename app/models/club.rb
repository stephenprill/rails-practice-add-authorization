class Club < ActiveRecord::Base

  has_many :participations
  has_many :students, through: :participations

end
