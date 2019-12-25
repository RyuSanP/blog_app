class ArticlesController < ApplicationController
  before_action :authenticate_user!, only:[:new, :edit]

  def index
    @articles = Article.all.order(id: "DESC")
  end

  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
    @user = @article.user
  end

  def edit
  end
  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id
    if @article.save
      redirect_to articles_path
    else
      render :new
    end

  end

  def edit
    @article = Article.find(params[:id])

  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    redirect_to articles_path
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private
  def article_params
    params.require(:article).permit(:title, :content)
  end
end
