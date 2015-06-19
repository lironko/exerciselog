require 'test_helper'

class WorkoutTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "should create workout with exerciseRecord" do
    params = {date: Time.now, notes: "That was a nice workout", exerciseRecord_attributes: [{exercise_id: 1}]}
    workout = Workout.build(params)
    assert workout.save
  end
end
