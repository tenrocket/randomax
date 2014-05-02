class RemoveIsGivenColumn < ActiveRecord::Migration
  def change
  	remove_column :posts, :gift_given
  end
end
