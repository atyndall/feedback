class AddGetRatingToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :get_rating, :boolean, default: true, null: false
    add_column :categories, :get_details, :boolean, default: true, null: false
  end
end
