class Feedback < ActiveRecord::Base
  attr_accessible :content, :email
  validates :email, :presence => true
  validates :content, :presence => true
end
