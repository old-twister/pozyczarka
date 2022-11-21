# frozen_string_literal: true

# == Schema Information
#
# Table name: items
#
#  id         :bigint           not null, primary key
#  name       :string
#  active     :boolean
#  borrowed   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  item_type  :integer          default("other"), not null
#
class Item < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }

  enum item_type: %i[book cd electric_device flower other]

  validates :item_type, inclusion: { in: item_types.keys }

  scope :active, -> { where(active: true) }
  scope :inactive, -> { where(active: false) }
  scope :borrowed, -> { where(borrowed: true) }
  scope :on_place, -> { where(borrowed: false) }
end
