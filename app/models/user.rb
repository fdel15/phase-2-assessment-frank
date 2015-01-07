class User < ActiveRecord::Base
  # Remember to create a migration!
  has_secure_password
  has_many :questions
  has_many :answers

  validates_uniqueness_of :name


end
