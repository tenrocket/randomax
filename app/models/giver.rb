class Giver < ActiveRecord::Base
	has_secure_password
	
	has_many :posts
	has_many :gifts, through: :posts
	has_many :askers, through: :posts

	# validates_uniqueness_of :email
	# validates_presence_of :address
	# validates_presence_of :user_name

end
