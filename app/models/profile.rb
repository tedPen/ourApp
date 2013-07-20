class Profile < ActiveRecord::Base
  attr_accessible :interests, :major, :profile_pic, :real_name, :student, :username, :year
end
