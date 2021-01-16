class User < ApplicationRecord

  def password_required?
    false
  end

  def email_required?
    true
  end

  def update_resource(resource, params)
    # Require current password if user is trying to change password.
    return super if params["password"]&.present?

    # Allows user to update registration information without password.
    resource.update_without_password(params.except("current_password"))
  end


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
  scope :pledged, -> { where.not(pledge: nil) }
  scope :totalpledged, -> { where.not(pledge: nil) }


end
