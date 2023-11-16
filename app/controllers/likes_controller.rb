class LikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @like = @post.likes.new(user: current_user)
    if @like.save
      redirect_to user_post_path(@post.user, @post), notice: 'Post liked successfully.'
    else
      redirect_to user_post_path(@post.user, @post), alert: 'Failed to like the post.'
    end
  end
end
