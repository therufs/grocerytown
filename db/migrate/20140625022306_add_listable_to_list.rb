class AddListableToList < ActiveRecord::Migration
  def change
    add_reference :lists, :listable, polymorphic: true
  end
end
