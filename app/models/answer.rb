class Answer < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :question
  belongs_to :user

  def answered_questions
    self.answers.map {|ans| ans.question_id}
  end

  # has_many :questions, foreign_key: "question_id", class_name: "Question"

end
