class Item < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }

  enum item_type: %i[book cd electric_device flower other]
  scope :active, -> { where(active: true)}
  scope :inactive, -> { where(active: false)}
  scope :borrowed, -> { where(borrowed: true)}
  scope :on_place, -> { where(borrowed: false)}
end
