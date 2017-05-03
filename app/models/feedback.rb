class Feedback < ApplicationRecord
  belongs_to :user

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :email, :presence =>true, :format => EMAIL_REGEX
  validates :phone_no, :presence =>true
  validates :comment, :presence =>true
end
