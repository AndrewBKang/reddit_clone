class Sub < ActiveRecord::Base
  attr_accessible :admin_id, :name, :links_attributes
  
  belongs_to :admin, class_name: :User
  
  has_many :moderator_memberships
  has_many :moderators, through: :moderator_memberships, source: :users
  has_many :links
  
  accepts_nested_attributes_for :links, reject_if: :all_blank

end
