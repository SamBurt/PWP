class PostController < ApplicationController

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    p = Post.new(create_update_params)

    if p.save
      flash[:notice] = "New post created"
      redirect_to page_index_path and return
    else
      flash[:warning] = "Error creating new post"
      redirect_to new_post_path(p) and return
    end
  end

  private
    def create_update_params
        params.require(:post).permit(:title, :text)
    end

end
