class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.text :name
      t.date :deadline
      t.text :categories
      t.text :reward
      t.integer :jar
      t.text :image
      t.text :user_id

      t.timestamps null: false
    end
  end
end
