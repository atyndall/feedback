class RemoveDetailsFromResponses < ActiveRecord::Migration
  def change
    remove_column :responses, :details, :text
  end
end
