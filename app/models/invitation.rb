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

  scope :not_processed, -> { where(state: 'pending')}

  after_create do
    invited_user.notifications.create(data: {
      message: "#{inviting_user.email} has invited you to friends.",
      type: 'invitation',
      path: '/friends'
    })
  end
end
