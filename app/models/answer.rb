class Answer < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :question
  belongs_to :user


  def test_id
    self.question.test_id
  end

end
