class AddRatingToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :rating, :integer, null: false, default: 0
  end
end
