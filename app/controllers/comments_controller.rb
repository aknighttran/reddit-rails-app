class CommentsController < ApplicationController
  before_action :set_topic

  # get
  def new
    @comment = Comment.new
    # form
  end

  # post
  def create
    @comment = @topic.comments.new(comments_params)
  end

  private 
    def comments_params
      params.require(:comment).permit(:body, :author)
    end

    def set_topic
      @topic = Topic.find(params[:id])
    end
end
