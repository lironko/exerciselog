class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name

      t.timestamps null: false
    end
    add_index :exercises, :name
  end
end
