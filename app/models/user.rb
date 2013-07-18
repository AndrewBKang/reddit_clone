require 'bcrypt'
class User < ActiveRecord::Base
  include BCrypt
  attr_accessible :session_token, :username, :password, :password_confirmation
  
  attr_accessor :password, :password_confirmation
  
  has_many :subs, foreign_key: :admin_id
  
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, length: {minimum: 6}, if: :password_changed?
  validates_confirmation_of :password
  
  before_save :encrypt_password, if: :password_changed?
  
  def password_changed?
    !!password_confirmation
  end
  
  def encrypt_password
    self.password_digest = BCrypt::Password.create(password)
  end

end
