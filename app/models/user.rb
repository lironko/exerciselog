class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :workouts, dependent: :destroy
  has_many :exercise_records, through: :workouts
  
  
  def personal_record(exercise)
    workouts = self.workouts.pluck(:id)
    pr = ExerciseRecord.where(workout_id: workouts, exercise_id: exercise).map &:max_weight
    return pr.max
  end
  
end
