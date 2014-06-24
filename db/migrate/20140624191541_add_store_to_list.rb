class AddStoreToList < ActiveRecord::Migration
  def change
    add_column :lists, :store_id, :integer
  end
end
