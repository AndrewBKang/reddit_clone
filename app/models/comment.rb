class Comment < ActiveRecord::Base
  attr_accessible :content, :link_id, :parent_comment_id, :user_id
  
  belongs_to :link
  belongs_to :parent_comment
  belongs_to :user
end
