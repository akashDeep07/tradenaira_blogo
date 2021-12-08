class HomeController < ApplicationController

	def index
		# @posts = Blogo::Post.published.where(:is_custom => false).sort.reverse[0..15]
		@latest_posts = Blogo::Post.published.where(:is_custom => false).sort.reverse.first(3)
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
		@meta_description = "The best place to find the current naira exchange rate today. Get live updates on the black market and learn how you can get the exchange rate in Nigeria today"
		@meta_title = "Naira Exchange Rate Today | Trade Naira"

		@posts = Blogo::Post.published.where(is_custom: false).page(1).per(16)

	end

	def load_more_post
		if params[:page].present?
			@posts = Blogo::Post.published.where(is_custom: false).page(params[:page]).per(16)
			if @posts.present?
				render json: { success: true, data: @posts }, status: 200
			else
				render json: { success: false }, status: 200
			end
		end
	end

	def show
		@post = Blogo::Post.published.where(:permalink => params[:permalink], :is_custom => false).first!
		@meta_description = @post.meta_description if @post.meta_description.present?
		@meta_title = @post.meta_title.present? ? @post.meta_title : @post.title
	end

	def search_tags
		if params[:tag]
			@posts = Blogo::Tag.find_by_name(params[:tag]).posts.published.where(:is_custom => false)
		else
			@posts = Blogo::Post.published.all
		end
	end

	def search_by_query
		if params[:query]
			@posts = Blogo::Post.published.where('raw_content LIKE ? OR title LIKE ?', '%'+params[:query]+'%', '%'+params[:query]+'%').where(:is_custom => false)
			render json: { data: @posts, success: true }
		else
			render json: { success: false }
		end
	end

	def search_by_id
		if params[:post_id]
			@posts = Blogo::Post.published.find_by_id params[:post_id]
			if @posts.present?
				re = /<img("[^"]*"|'[^']*'|[^'">])*>/
				raw_data = @posts.raw_content.gsub!(re, '').gsub('&nbsp;','')
				render json: { data: { title: @posts.title, content: raw_data }, success: true }
			else
				render json: { success: false }
			end
		else
			render json: { success: false }
		end
	end

	def update_sidebar
		user = Blogo::User.first
		if params[:sidebar].present? && params[:sidebar] == "true"
			user.sidebar_enable = true
			if user.save
				render json: { success: true }, status: 200
			else
				render json: { success: false }, status: 200
			end
		else
			user.sidebar_enable = false
			if user.save
				render json: { success: true }, status: 200
			else
				render json: { success: false }, status: 200
			end
		end
	end

	# def load_more_post
	# 	if params[:after].present?
	# 		@posts = Blogo::Post.published.where(:is_custom => false).sort.reverse[(params[:after].to_i)..(params[:after].to_i+15)]
	# 		if @posts.present?
	# 			render json: { success: true, : @posts }, status: 200
	# 		else
	# 			render json: { success: false }, status: 200
	# 		end
	# 	end
	# end

end