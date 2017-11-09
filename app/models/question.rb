class Question < ActiveRecord::Base
  # Remember to create a migration!
  has_many :comments, as: :commentable
  belongs_to :user
  has_many :votes, as: :voteable
  has_many :answers
end
