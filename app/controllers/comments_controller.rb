class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(checkCommentParams)
    redirect_to article_path(@article)
  end

private
  def checkCommentParams
    params.require(:comment).permit(:commenter, :body)
  end

end
