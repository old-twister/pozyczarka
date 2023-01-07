class Invitation < ApplicationRecord
  belongs_to :invited_user, class_name: 'User', foreign_key: :invited_id, optional: true
  belongs_to :inviting_user, class_name: 'User', foreign_key: :invited_by_id, optional: true
end
