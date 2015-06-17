class Exercise < ActiveRecord::Base
  validates :name, uniqueness: { case_sensetive: false }
  has_many :exerciseRecords
  has_many :exerciseSet, through: :exerciseRecord
end
