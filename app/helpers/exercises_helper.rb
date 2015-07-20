module ExercisesHelper
  def userpr(exercise)
    thepr = current_user.personal_record(exercise)
    if thepr
      ("<p>Your PR: " + thepr.to_s + "</P>").html_safe
    end
  end
  
  def website_best(exercise)
    best = exercise.highest_weight
    if best
      best.to_s
    else
      0
    end
  end
  
  def website_average(exercise)
    weight = exercise.average_weight
    if weight
      weight.truncate(2)
    else
      0
    end
  end
end
