class Post < ActiveRecord::Base
	belongs_to :asker
	belongs_to :giver
	belongs_to :gift

	# validates_presence_of :title
	# validates_presence_of :message
	# validates_presence_of :due_date
	# validates_presence_of :gift_id
end
