class CreateExerciseSets < ActiveRecord::Migration
  def change
    create_table :exercise_sets do |t|
      t.decimal :weight
      t.integer :reps
      t.references :exerciseRecord, index: true

      t.timestamps null: false
    end
    add_foreign_key :exercise_sets, :exerciseRecords
  end
end
