class ExerciseRecord < ActiveRecord::Base
  validates :exercise_id, inclusion: { in: Exercise.pluck(:id),
  message: " please pick an exercise from the exercises list." }
  
  has_many :exercise_sets, dependent: :destroy
  belongs_to :exercise
  accepts_nested_attributes_for :exercise_sets, :reject_if => :all_blank, :allow_destroy => true
  
end
