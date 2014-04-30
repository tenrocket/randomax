class CreateGivers < ActiveRecord::Migration
  def change
    create_table :givers do |t|
      t.string :user_name
      t.string :address
      t.string :email
    end
  end
end
