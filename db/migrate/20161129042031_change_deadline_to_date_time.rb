class ChangeDeadlineToDateTime < ActiveRecord::Migration
  def change
    change_column :goals, :deadline, :datetime
  end
end
