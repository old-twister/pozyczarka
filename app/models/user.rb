# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  has_many :items, dependent: :destroy
  has_many :friendships,inverse_of: :user, dependent: :destroy
  has_many :friends, through: :friendships
  has_many :sent_invitations, foreign_key: :invited_by_id, class_name: 'Invitation'
  has_many :received_invitations, foreign_key: :invited_id, class_name: 'Invitation'
  has_many :notifications, dependent: :destroy

end
