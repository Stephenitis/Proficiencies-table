class Proficiency < ActiveRecord::Base

  
  belongs_to :user
  belongs_to :skill


  validates :formal, :inclusion => {:in => [true, false]}
end
