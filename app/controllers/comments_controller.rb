class CommentsController < ApplicationController
  before_action :set_comment, only: %i[show edit update destroy]

  def show
  end

  # POST /comments or /comments.json
  def create
    @comment = Comment.new(comments_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to posts_url, notice: 'Comment was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comments_params
      params.permit(:body, :status, :post_id, :author_id)
    end

end
