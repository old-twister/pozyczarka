class Item < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }

  enum item_type: %i[book cd electric_device flower other]
end
