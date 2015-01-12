class User < ActiveRecord::Base
	has_many :posts
	has_secure_password

	validates :pseudo, presence: true
	validates :pseudo, uniqueness: true
	validates :email, presence: true
	
	
end
