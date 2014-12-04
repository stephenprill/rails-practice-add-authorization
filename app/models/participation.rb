class Participation < ActiveRecord::Base

  belongs_to :student
  belongs_to :club

  validates :student, presence: true, uniqueness: {scope: :club}
  validates :club, presence: true

end
