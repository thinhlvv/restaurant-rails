class Item < ApplicationRecord
  belongs_to :sections
  has_many :orders
end
