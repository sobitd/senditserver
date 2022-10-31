class RemoveForeignKey < ActiveRecord::Migration[7.0]
  def change
    remove_column :parcels, :user_id
  end
end
