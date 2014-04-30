class Gift < ActiveRecord::Base
	has_many :posts
	has_many :givers, through: :posts
	has_many :askers, through: :posts

	# validates_presence_of :name
	# validates_presence_of :description
	# validates_presence_of :price
end
