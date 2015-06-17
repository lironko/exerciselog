class Workout < ActiveRecord::Base
  belongs_to :user
  has_many :exerciseRecords
  accepts_nested_attributes_for :exerciseRecords
end
