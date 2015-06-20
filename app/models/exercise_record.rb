class ExerciseRecord < ActiveRecord::Base
  has_many :exercise_sets
  belongs_to :exercise
  validates :exercise_id, inclusion: { in: Exercise.pluck(:id),
    message: "%{value} please pick an exercise from the list." }
  accepts_nested_attributes_for :exercise_sets, :reject_if => :all_blank, :allow_destroy => true
  
end
