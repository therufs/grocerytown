class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|

      t.boolean :recipe
      t.references :superlist

      t.timestamps
    end
  end
end
