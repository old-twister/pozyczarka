# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  has_many :items, dependent: :destroy
  has_many :friendships,inverse_of: :user, dependent: :destroy
  has_many :friends, through: :friendships
end
