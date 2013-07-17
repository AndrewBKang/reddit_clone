class User < ActiveRecord::Base
  attr_accessible :password, :session_token, :username, :password_confirmation
  
  validates :username, presence: true, uniqueness: true
  validates_confirmation_of :password
  
end
