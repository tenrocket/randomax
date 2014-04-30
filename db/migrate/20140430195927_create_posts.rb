class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :message
      t.date :due_date
      t.integer :asker_id
      t.integer :giver_id
      t.integer :gift_id

      t.timestamps
    end
  end
end
