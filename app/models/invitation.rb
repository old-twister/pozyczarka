class Invitation < ApplicationRecord
  include AASM

  aasm :column => 'state' do
  state :pending, initial: true
  state :accepted, :rejected

  event :accept do
    transitions from: :pending, to: :accepted
  end

  event :reject do
    transitions from: :pending, to: :rejected
  end
  end

  belongs_to :invited_user, class_name: 'User', foreign_key: :invited_id, optional: true
  belongs_to :inviting_user, class_name: 'User', foreign_key: :invited_by_id, optional: true
end
