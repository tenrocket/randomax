class CreateAskers < ActiveRecord::Migration
  def change
    create_table :askers do |t|
      t.string :user_name
      t.string :address
      t.string :email
    end
  end
end
