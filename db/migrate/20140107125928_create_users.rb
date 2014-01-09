class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :username, null: false
      t.string :password_digest, null: false
      t.boolean :can_edit_users, null: false, default: false

      t.timestamps
    end
  end
end
