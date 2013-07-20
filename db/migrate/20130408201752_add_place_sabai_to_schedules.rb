class AddPlaceSabaiToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :place_sabai, :string
  end
end
