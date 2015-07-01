class Exercise < ActiveRecord::Base
  validates :name, uniqueness: { case_sensetive: false }\
  
  has_many :exercise_records
  has_many :exercise_sets, through: :exercise_records
end
