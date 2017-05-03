class Company < ApplicationRecord
  has_many :skills

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :email, :presence =>true, :format => EMAIL_REGEX
  validates :phone_no, :presence =>true
  validates :sector, :presence =>true
	validates :city, :presence =>true
	validates :state, :presence =>true
	validates :country, :presence =>true
  validates :name, :presence =>true
  validates :expiry_date, :presence =>true
  validates :description, :presence => true
  validates :salary, :presence => true
end
