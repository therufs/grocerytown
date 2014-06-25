class DeprecateSomeListColumns < ActiveRecord::Migration
  def change
    rename_column :lists, :superlist_id, :_superlist_id
  end
end
