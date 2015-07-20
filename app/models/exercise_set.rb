class ExerciseSet < ActiveRecord::Base
  validates :weight, numericality: { greater_than_or_equal_to: 0, less_than: 2000 }
  validates :reps, numericality: { greater_than_or_equal_to: 0, less_than: 300 }
  
  belongs_to :exercise_record
  has_one :workout, through: :exercise_record
  has_one :user, through: :workout
  has_one :exercise, through: :exercise_record
  
  def to_s
    self.weight.to_s + " * " + self.reps.to_s
  end
end
