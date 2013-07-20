class CreateMealMeetings < ActiveRecord::Migration
  def change
    create_table :meal_meetings do |t|
      t.string :title
      t.text :interests
      t.decimal :time, :precision => 4, :scale => 2
      t.string :location

      t.timestamps
    end
  end
end
