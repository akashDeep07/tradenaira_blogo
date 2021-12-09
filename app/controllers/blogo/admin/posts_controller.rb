module Blogo::Admin
  # Responsible for posts management: creation, editing, deletion, preview.
  class PostsController < BaseController
    skip_before_action :verify_authenticity_token, only: [:create_new_link_record, :update_sidebar_link]

    before_action :check_sidebar_link, only: [:delete_sidebar_link, :edit_sidebar_link, :update_sidebar_link]

    # GET /admin/posts
    #
    def index
      @posts = Blogo::Post.all.where(:is_custom => false)
      @custom_posts = Blogo::Post.all.where(:is_custom => true)
    end

    # GET /admin/posts/new
    #
    def new
      @post = Blogo::Post.new(published: true)
    end

    # POST /admin/posts
    #
    def create
      service = Blogo::CreatePostService.new(blogo_current_user, post_params)

      if service.create!
        @post = service.post
        flash[:notice] = I18n.translate('blogo.admin.post_created')
        redirect_to blogo_admin_posts_path
      else
        @post = service.post
        render 'new'
      end
    end

    # GET /admin/posts/:id/edit
    #
    def edit
      @post = Blogo::Post.where(permalink: params[:id]).first!
    end

    # PATCH /admin/posts/:id
    #
    def update
      @post = Blogo::Post.where(permalink: params[:id]).first!
      service = Blogo::UpdatePostService.new(@post, post_params)

      if service.update!
        flash[:notice] = I18n.translate('blogo.admin.post_updated')
        redirect_to blogo_admin_posts_path
      else
        render 'edit'
      end
    end

    # DELETE /admin/posts/:id
    #
    def destroy
      post = Blogo::Post.where(permalink: params[:id]).first!
      Blogo::DestroyPostService.new(post).destroy!

      flash[:notice] = I18n.translate('blogo.admin.post_removed')
      redirect_to blogo_admin_posts_path
    end

    # POST /admin/posts/preview
    #
    def preview
      @post         = Blogo::PreviewPostService.new(blogo_current_user, post_params).preview
      @meta         = {title: @post.title }
      @recent_posts = Blogo::Post.published.limit(Blogo.config.recent_posts) if Blogo.config.recent_posts
      @tags         = Blogo::Tag.all

      render 'blogo/posts/show', layout: 'blogo/blog'
    end

    def sidebar_links
      @sidebar_links = SidebarLink.all
    end

    def new_sidebar_link
      @sidebar_links = SidebarLink.new
    end

    def create_new_link_record
      link = SidebarLink.new sidebar_link_params
      link.is_active = params[:active].present? ? true : false
      if link.save
        render_sidebar "Link has been created successfully."
      else
        flash[:alert] = link.errors.full_messages
        @sidebar_links = SidebarLink.new
        redirect_to request.referer
      end
    end

    def delete_sidebar_link
      if @link.present?
        if @link.destroy
          render_sidebar "link has been deleted."
        end
      else
        render_sidebar "Some issue occured."
      end
    end

    def edit_sidebar_link

    end

    def update_sidebar_link
      if @link.present?
        @link.is_active = params[:is_active].present? ? true : false
        if @link.update sidebar_link_params
          render_sidebar "Link has been updated."
        else
          render_sidebar @link.errors.full_messages
        end
      else
        render_sidebar "Some issue occured."
      end 
    end


    private

    # Get post parameters from params.
    #
    # @return [Hash]
    def post_params
      params.require(:post).permit(:title, 
        :permalink, 
        :published_at, 
        :raw_content, 
        :published, 
        :tags_string,
        :meta_title,
        :meta_description
       	)
    end

    def sidebar_link_params
      params.permit(:title, :url, :is_active)
    end

    def check_sidebar_link
      @link = SidebarLink.find(params[:id]) rescue ""
    end

    def render_sidebar msg
      flash[:alert] = msg
      @sidebar_links = SidebarLink.all
      redirect_to "/blog/admin/links"
    end

  end
end
