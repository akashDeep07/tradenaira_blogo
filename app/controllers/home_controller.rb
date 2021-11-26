class HomeController < ApplicationController

	def index
		@posts = Blogo::Post.published.all
		@latest_posts = Blogo::Post.published.last 3
		@re = /<("[^"]*"|'[^']*'|[^'">])*>/
	end

	def show
		@post = Blogo::Post.published.where(:permalink => params[:permalink]).first!
	end

	def search_tags
		if params[:tag]
			@posts = Blogo::Tag.find_by_name(params[:tag]).posts.published
		else
			@posts = Blogo::Post.published.all
		end
	end

	def search_by_query
		if params[:query]
			@posts = Blogo::Post.published.where('raw_content LIKE ? OR title LIKE ?', '%'+params[:query]+'%', '%'+params[:query]+'%')
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
end