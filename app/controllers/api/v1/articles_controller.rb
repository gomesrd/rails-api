class Api::V1::ArticlesController < ApplicationController
  def index
    articles = Article.all
    render json: articles, status: 200
  end

  def show
    article = Article.find_by(id: params[:id])
    if article
      render json: article, status: 200
    else
      render json: { message: 'Article not found' }
    end
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
    article = Article.find_by(id: params[:id])
    if article
      article.update(title: article_params[:title], body: article_params[:body], author: article_params[:author])
      render json: { message: 'Article record update successfully' }
    else
      render json: { message: 'Article not found' }
    end
  end

  def destroy
    article = Article.find_by(id: params[:id])
    if article
      article.destroy
      render json: { message: 'Article record deleted successfully' }
    else
      render json: { message: 'Article not found' }
    end
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
