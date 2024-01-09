class Api::V1::ArticlesController < ApplicationController
  def index
    articles = Article.all
    render json: articles, status: 200
  end

  def show
  end

  def create
    article = Article.new(
      title: article_params[:title],
      body: article_params[:body],
      author: article_params[:author]
    )
    if article.save
      render json: article, status: 200
    else
      render json: { message: 'Error creating' }
    end
  end

  def update
  end

  def destroy
  end

  private

  def article_params
    params.require(:article).permit(
      :title,
      :body,
      :author
    )
  end
end
