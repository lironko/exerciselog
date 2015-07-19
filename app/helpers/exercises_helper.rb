module ExercisesHelper
  def userpr(exercise)
    thepr = current_user.personal_record(exercise)
    if thepr
      "Your PR: "+thepr.weight.to_s + "*" + thepr.reps.to_s
    end
  end
end
