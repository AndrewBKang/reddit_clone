class Link < ActiveRecord::Base
  attr_accessible :body, :title, :url, :sub_id
  
  belongs_to :sub
  has_many :comments
  
  def comments_by_parent
    self.comments
  end
  
  
end
