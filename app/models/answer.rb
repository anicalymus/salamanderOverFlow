class Answer < ActiveRecord::Base

  has_many :comments, as: :commentable
  belongs_to :user
  has_many :votes, as: :voteable
  belongs_to :question

end
