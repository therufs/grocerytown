class List < ActiveRecord::Base

  has_many :items
  belongs_to :trip
  belongs_to :store
  belongs_to :listable, polymorphic: true

  has_many :lists, as: :listable
  # has_many :sublists, class_name: "List", foreign_key: "superlist_id"
  # belongs_to :superlist, class_name: "List"

  def self.allitems  ## NEED TO MAKE SURE THAT SUPER/SUBLIST ID != LIST ID!!
    all = all || []
    until sublists.empty? # has no sublists
      # push items to all
      # check sublists for more sublists and items
    end
    # push all items at top level to all
  end



end
