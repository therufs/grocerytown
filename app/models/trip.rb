class Trip < ActiveRecord::Base

  has_many :stores
  has_many :lists, through: :stores

end
