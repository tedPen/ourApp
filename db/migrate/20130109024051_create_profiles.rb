class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :username
      t.string :real_name
      t.string :profile_pic
      t.text :interests
      t.string :major
      t.integer :year
      t.boolean :student

      t.timestamps
    end
  end
end
