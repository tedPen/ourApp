class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :meal
      t.string :place_mrups
      t.string :place_fireice
      t.string :place_pizza
      t.string :place_dhall
      t.string :question1
      t.string :question2
      t.string :question3
      t.string :question4

      t.timestamps
    end
  end
end
