class DropAskerGiverColumnFromPostsTable < ActiveRecord::Migration
  def change
 		remove_column :posts, :asker_id
  	remove_column :posts, :giver_id
  end
end
