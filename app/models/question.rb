class Question < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user; :test
  has_many :answers

   validates_presence_of :content, :correct_answer

end
