class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :masqueradable, :database_authenticatable, :registerable, :recoverable,
  :rememberable, :validatable, :omniauthable, :confirmable

  has_one_attached :avatar
  has_person_name

  has_many :notifications, as: :recipient
  has_many :services

  scope :confirmed, -> { where.not(confirmed_at: nil) }
  scope :withcomments, -> { where.not(comments: nil) }

end
