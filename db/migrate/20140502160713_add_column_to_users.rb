class AddColumnToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :is_asker, :boolean
  end
end
