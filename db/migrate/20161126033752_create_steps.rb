class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.text :name
      t.text :notes
      t.date :deadline
      t.datetime :reminder
      t.integer :token
      t.integer :goal_id

      t.timestamps null: false
    end
  end
end
