class Test < ActiveRecord::Base
  # Remember to create a migration!
  has_many :questions
  has_many :answers, through: :questions
  has_many :users, through: :questions
  #has-many :answers, through: :questions, source: "question_id", class_name: "Question
end
