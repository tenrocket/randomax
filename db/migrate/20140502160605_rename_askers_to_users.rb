class RenameAskersToUsers < ActiveRecord::Migration
  def change
  	rename_table :askers, :users
  end
end
