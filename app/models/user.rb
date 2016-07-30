class User < ActiveRecord::Base
	has_secure_password validations: false

	validates :user_name,presence: true,uniqueness: true
	validates :password,presence: true,on: :create, length: {minimum: 5}	

end