class HomeController < ApplicationController
	def index
		@posts = Blogo::Post.all
	end
	def show
		@post = Blogo::Post.published.where(:permalink => params[:permalink]).first!
	end
end