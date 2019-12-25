class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @articles = @user.articles
    @favorite_articles = @user.favorites.map{|favorite| favorite.article}
  end
end
