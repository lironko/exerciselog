class Workout < ActiveRecord::Base
  validates :date, presence: true
  
  belongs_to :user
  has_many :exercise_records, dependent: :destroy
  has_many :exercise_sets, through: :exercise_records
  accepts_nested_attributes_for :exercise_records, :reject_if => :all_blank, :allow_destroy => true
  
  #exercises included in the workout (string)
  def exercises
    ids = self.exercise_records.pluck(:exercise_id)
    Exercise.where(id: ids)
  end
end
