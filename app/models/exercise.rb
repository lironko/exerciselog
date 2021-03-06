class Exercise < ActiveRecord::Base
  validates :name, uniqueness: { case_sensetive: false }\
  
  has_many :exercise_records
  has_many :exercise_sets, through: :exercise_records
  
  def average_weight
    self.exercise_sets.average(:weight)
  end
  
  def highest_weight
    self.exercise_sets.order('weight DESC, reps DESC').first
  end
end
