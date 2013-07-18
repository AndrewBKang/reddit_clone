class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url
      t.string :title
      t.string :body
      t.integer :sub_id

      t.timestamps
    end
  end
end
