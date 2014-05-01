class AddTakenBooleanToPostsTable < ActiveRecord::Migration
  def change
  	add_column :posts, :gift_given, :boolean
  	add_column :askers, :password_digest, :string
  	add_column :givers, :password_digest, :string
  end
end
