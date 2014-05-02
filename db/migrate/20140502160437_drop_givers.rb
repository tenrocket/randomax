class DropGivers < ActiveRecord::Migration
  def change
  	drop_table :givers
  end
end
