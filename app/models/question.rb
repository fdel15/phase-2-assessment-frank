class Question < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user; :test
  has_many :answers

   validates_presence_of :content, :correct_answer

   # validates_uniqueness_of

  # belongs_to :user, foreign_key: "user_id", class_name: "User"
  # has_many :answers, foreign_key: "answer_id", class_name: "Question"
end
