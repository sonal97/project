class User < ApplicationRecord
	has_many :feedbacks

	attr_accessor :password
	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	validates :name, :presence =>true, :length => { :in =>3..20}
	validates :h_no, :presence =>true
	validates :sector, :presence =>true
	validates :city, :presence =>true
	validates :state, :presence =>true
	validates :country, :presence =>true
	validates :pincode, :presence =>true
	validates :email, :presence =>true, :uniqueness => true, :format => EMAIL_REGEX
	validates :phone_no, :presence =>true, :uniqueness => true
	validates :password, :confirmation =>true, :length => { :in =>3..20}

	before_save :encrypt_password
	after_save :clear_password

	def encrypt_password
		if password.present?
			self.salt = BCrypt::Engine.generate_salt
			self.encrypted_password= BCrypt::Engine.hash_secret(password, salt)
		end
	end

	def clear_password
		self.password = nil
	end

	def self.authenticate(email="", login_password="")
	    if  true
			user = User.find_by_email(email)
		end
		
	    if user 
		#user.match_password(login_password)
			return user
	    else
			return false
	    end
		
	end

	def match_password(login_password="")
	  encrypted_password == BCrypt::Engine.hash_secret(login_password, salt)
	end

end
