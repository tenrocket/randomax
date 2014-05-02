class AddUsersColumnToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :user_id, :integer
  	add_column :posts, :is_given, :boolean, :default => false
  end
end
