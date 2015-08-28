class User < ActiveRecord::Base
	has_many :taskings
	has_many :tasks, through: :taskings
	has_many :messages

	has_secure_password
end