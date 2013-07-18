class ModeratorMembership < ActiveRecord::Base
  attr_accessible :moderator_id, :sub_id
  validates :moderator_id, uniquesness: {scope: :sub_id}
end
