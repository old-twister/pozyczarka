class Notification < ApplicationRecord
  include ActionView::RecordIdentifier
  belongs_to :user

  after_create_commit do
    broadcast_append_to [user, :notifications], target: 'notifications_list', partial: 'notifications/notification', locals: { notification: self }
    broadcast_replace_to [user, :notifications], target: dom_id(user, :notifications_badge), partial: 'notifications/notifications_badge', locals: { user: user }
  end

  scope :unread, -> { where(read_at: nil) }

  def unread?
    read_at.nil?
  end
end
