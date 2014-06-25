class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.belongs_to :list
      t.belongs_to :store

      t.timestamps
    end
  end
end
