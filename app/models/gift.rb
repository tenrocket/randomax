class Gift < ActiveRecord::Base
	has_many :posts
	has_many :users, through: :posts

	# validates_presence_of :name
	# validates_presence_of :description
	# validates_presence_of :price
end
