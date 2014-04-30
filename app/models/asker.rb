class Asker < ActiveRecord::Base
	has_many :posts
	has_many :gifts, through: :posts
	has_many :givers, through: :posts

	# validates_uniqueness_of :email
	# validates_presence_of :address
	# validates_presence_of :user_name
end
