class Message < ApplicationRecord
  belongs_to :sender, class_name: 'User', foreign_key: 'sender_id'
  belongs_to :receipient, class_name: 'User', foreign_key: 'receipient_id'

  after_create_commit do
    broadcast_append_to [sender, :messages], partial: 'messages/message', locals: { message: self, current_user: sender}
    broadcast_append_to [receipient, :messages], partial: 'messages/message', locals: { message: self, current_user: receipient}
  end

  def self.between(sender, receipient)
    Message.where(sender_id: [sender.id, receipient.id], receipient_id: [sender.id, receipient.id])
  end
end
