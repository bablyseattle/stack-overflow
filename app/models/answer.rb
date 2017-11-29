class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
  validates :comment, :presence => true
end
