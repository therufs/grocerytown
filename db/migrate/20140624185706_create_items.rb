class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :list_id
      t.integer :store_id

      t.timestamps
    end
  end
end
