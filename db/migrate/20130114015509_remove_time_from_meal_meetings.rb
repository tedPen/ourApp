class RemoveTimeFromMealMeetings < ActiveRecord::Migration
  def up
    remove_column :meal_meetings, :time
    add_column :meal_meetings, :time, :datetime
  end

  def down
    add_column :meal_meetings, :time, :datetime
  end
end
