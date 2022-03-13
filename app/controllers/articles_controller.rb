class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def new
    article = Article.new
  end

  def create
    article = Article.new article_params
    redirect_to article    if  article.save
  end

  def index
    @articles = Article.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_article
    @article = Article.find_by(id: params[:id])
  end

  def article_params
    params.require(:article).permit(:name , :images => [])
  end
end
