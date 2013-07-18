class CreateSubs < ActiveRecord::Migration
  def change
    create_table :subs do |t|
      t.integer :admin_id
      t.string :name

      t.timestamps
    end
  end
end
