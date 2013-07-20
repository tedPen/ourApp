class AddNameYearToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :name, :string
    add_column :schedules, :year, :integer
  end
end
