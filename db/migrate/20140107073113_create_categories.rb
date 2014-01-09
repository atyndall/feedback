class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.string :urlname, null: false
      t.text :destinations
    end
  end
end
