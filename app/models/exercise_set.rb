class ExerciseSet < ActiveRecord::Base
  validates :weight, numericality: { greater_than_or_equal_to: 0, less_than: 2000 }
  validates :reps, numericality: { greater_than_or_equal_to: 0, less_than: 300 }
  belongs_to :exercise_record
end
