class ArticlesController < ApplicationController
  def new
  end

  def create
    # render plain: params[:article].inspect (initial code for create method)

    @article = Article.new(params[:article])

    @article.save
    redirect_to @article
  end
end
