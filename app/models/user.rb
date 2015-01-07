class User < ActiveRecord::Base
  # Remember to create a migration!
  has_secure_password
  has_many :questions
  has_many :answers

  validates_uniqueness_of :name

  def answered_questions
    self.answers.map {|ans| ans.question_id}
  end


end
