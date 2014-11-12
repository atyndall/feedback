class AddDisabledToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :disabled, :boolean, default: false
  end
end
