class AddEmailColumnToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :name, :string
  end
end
