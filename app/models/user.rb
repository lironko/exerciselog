class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :workouts, dependent: :destroy
  has_many :exercise_records, through: :workouts
  has_many :exercise_sets, through: :exercise_records
  
  
  def personal_record(exercise)
    records = self.exercise_records.where(exercise_id: exercise).pluck(:id)
    max_set = ExerciseSet.where(exercise_record_id: records).order("weight DESC, reps DESC").first
    return max_set
  end
  
  def all_prs()
    exercises_ids = self.exercise_records.pluck("DISTINCT exercise_id")
    exercises_ids.map { |id| self.personal_record(id) }
  end
  
end
