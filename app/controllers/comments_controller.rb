class CommentsController < ApplicationController
  before_action :set_excursion, only: [:show, :edit, :update, :destroy]

  def create
    @excursion = Excursion.find(params[:excursion_id])
    @excursion.comments.create(comment_params)

    redirect_to excursion_path(@excursion)
  end

  def show
  end

  def destroy
    @comment.destroy
    redirect_to :back
  end

 private
    # Use callbacks to share common setup or constraints between actions.
    def set_excursion
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:autor, :body)
    end
end
