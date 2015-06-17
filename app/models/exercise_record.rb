class ExerciseRecord < ActiveRecord::Base
  belongs_to :exercise
  belongs_to :workout
  has_many :exerciseSets
  accepts_nested_attributes_for :exerciseSets
end
