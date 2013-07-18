class CreateModeratorMemberships < ActiveRecord::Migration
  def change
    create_table :moderator_memberships do |t|
      t.integer :moderator_id
      t.integer :sub_id

      t.timestamps
    end
  end
end
