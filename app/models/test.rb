class Test < ActiveRecord::Base

  has_many :questions
  has_many :answers, through: :questions
  has_many :users, through: :questions

  def test_contributors
    self.questions.map {|q| q.user.id}
  end

  def test_answers
    self.questions.map {|q| q.correct_answer}
  end
end
