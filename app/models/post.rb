class Post < ActiveRecord::Base
	belongs_to :user
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

	def self.user(user)
		joins(:user).where("users.user_name Like ?", user)
	end

	def self.search(params)

		search_term = params[:search_term]
		search = Post.all

		if search_term != " "
			search = search.where("posts.title Like ? OR posts.message Like ? OR posts.user.address Like ?", "%#{search}%", "%#{search}%", "%#{search}%")
		end
	end

end
