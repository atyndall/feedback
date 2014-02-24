class AddSpecificsToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :liked, :text
    add_column :responses, :disliked, :text
  end
end
