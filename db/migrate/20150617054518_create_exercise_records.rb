class CreateExerciseRecords < ActiveRecord::Migration
  def change
    create_table :exercise_records do |t|
      t.references :exercise, index: true
      t.references :workout, index: true

      t.timestamps null: false
    end
    add_foreign_key :exercise_records, :exercises
    add_foreign_key :exercise_records, :workouts
  end
end
