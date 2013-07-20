class AddQuestionFiveToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :question5, :string
  end
end
