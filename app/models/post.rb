class Post < ActiveRecord::Base
	belongs_to :asker
	belongs_to :giver
	belongs_to :gift

	# validates_presence_of :title
	# validates_presence_of :message
	# validates_presence_of :due_date
	# validates_presence_of :gift_id

	scope :gift_given, -> {where(gift_given: true)}
	scope :gift_not_given, -> {where(gift_given: false)}

	def self.start_date(start_date)
		where('due_date > ?', start_date)
	end

	def self.end_date(end_date)
		where('due_date < ?', end_date)
	end

	def self.giver(giver)
		joins(:giver).where("givers.user_name Like ?", giver)
	end

	def self.asker(asker)
		joins(:asker).where("askers.user_name Like ?", asker)
	end

	def self.search(params)

		search_term = params[:search_term]
		search = Post.all

		if search_term != " "
			search = search.where("posts.title Like ? OR posts.message Like ? OR posts.asker.address Like ?", "%#{search}%", "%#{search}%", "%#{search}%")
		end
	end

end
