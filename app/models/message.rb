class Message < ApplicationRecord
  belongs_to :sender, class_name: 'User', foreign_key: 'sender_id'
  belongs_to :receipient, class_name: 'User', foreign_key: 'receipient_id'

  def self.between(sender, receipient)
    Message.where(sender_id: [sender.id, receipient.id], receipient_id: [sender.id, receipient.id])
  end
end
