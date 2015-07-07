class ExerciseRecord < ActiveRecord::Base
  validates :exercise_id, inclusion: { in: Exercise.pluck(:id),
  message: " please pick an exercise from the exercises list." }
  
  has_many :exercise_sets, dependent: :destroy
  belongs_to :exercise
  accepts_nested_attributes_for :exercise_sets, :reject_if => :all_blank, :allow_destroy => true
  
  def total_reps
    reps = 0
    self.exercise_sets.each do |set|
      reps += set.reps
    end
    return reps
  end
  
  def volume
    vol = 0
    self.exercise_sets.each do |set|
      vol += set.weight * set.reps
    end
    return vol
  end
  
  def max_weight
    max = 0
    self.exercise_sets.each do |set|
      if set.weight > max
        max = set.weight
      end
    end
    return max
  end
  
  
end
