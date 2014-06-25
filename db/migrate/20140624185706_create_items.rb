class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.references :list
      t.references :store

      t.timestamps
    end
  end
end
