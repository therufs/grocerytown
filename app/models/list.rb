class List < ActiveRecord::Base

  has_many :items
  belongs_to :trip
  belongs_to :store

  has_many :sublists, class_name: "List", foreign_key: "superlist_id"
  belongs_to :superlist, class_name: "List"

end
