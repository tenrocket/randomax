class ChangeBooleanDefault < ActiveRecord::Migration
  def change
  	change_column :posts, :gift_given, :boolean, default: :false
  end
end
