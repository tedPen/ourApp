class Schedule < ActiveRecord::Base
  attr_accessible :meal,:place_sabai, :place_mrups, :place_fireice, :place_pizza, :place_dhall, :question1, :question2, :question3, :question4, :question5
  belongs_to :user
end
