class Workout < ActiveRecord::Base
  belongs_to :user
  has_many :exercise_records
  accepts_nested_attributes_for :exercise_records, :reject_if => :all_blank, :allow_destroy => true
end
