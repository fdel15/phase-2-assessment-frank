class Answer < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :question
  belongs_to :user

  # has_many :questions, foreign_key: "question_id", class_name: "Question"

end
