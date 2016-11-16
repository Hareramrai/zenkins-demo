class CreateFollowers < ActiveRecord::Migration[5.0]
  def change
    create_table :followers do |t|
      t.datetime :connected_at
      t.references :user_id
      t.timestamps
    end
  end
end
