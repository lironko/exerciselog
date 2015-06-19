class ExerciseRecord < ActiveRecord::Base
  has_many :exercise_sets
  belongs_to :exercise
  accepts_nested_attributes_for :exercise_sets, :reject_if => :all_blank, :allow_destroy => true
  
end
