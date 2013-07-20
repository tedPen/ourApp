class AddPrimaryKeys < ActiveRecord::Migration
  def up
  	remove_column :schedules, :name
  	add_column :schedules, :user_id, :primary_key
  	add_column :users, :id, :primary_key
  end

  def down
  	add_column :schedules, :name, :string
  	remove_column :schedules, :id
  	remove_column :users, :id
  end
end
