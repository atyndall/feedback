class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :name
      t.string :email
      t.text :details
      t.integer :category_id, null: false

      t.timestamps
    end
  end
end
