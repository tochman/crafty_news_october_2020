class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)
    redirect_to root_path, notice: 'Your article was sucessfully created'
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article, notice: 'Article was successfully updated'
    else
      redirect_to edit_article_path, notice: 'Something went wrong, try again'
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

end
