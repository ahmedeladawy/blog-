class CommentsController < ApplicationController



  def create
    @post = Post.find(params[:post_id])

    @comment = Comment.new(comment_params)
    @comment.post = @post
    if @comment.save(comment_params)
      redirect_to post_path(@post) , notice: "Comment Created"
    else
      redirect_to post_path(@post), alert: "Somthing Wrong"
    end
  end

  private
  def comment_params
    comment_params = params.require(:comment).permit(:body)
  end
end
