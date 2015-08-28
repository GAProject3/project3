class Task < ActiveRecord::Base
	has_many :taskings
	has_many :users, through: :taskings
end