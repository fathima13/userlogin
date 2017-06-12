class ArticlesController < ApplicationController
	# before_action :set_user, only: [:new, :create]
  def index
  	@articles = current_user.articles
  end

  def new
  	@article = current_user.articles.new
  end

  def create

  	@article = current_user.articles
  	@article = @article.new(paramaters)
    if @article.save
     redirect_to article_url(id: @article.id)
     else
      render 'new'
    end
  end
  def edit 
  	 @article = current_user.articles.find(params[:id])
  end
  def show
  	@article = current_user.articles.find(params[:id])
  end
  def update
     @article = current_user.articles.find(params[:id])
     @article = @article.update(paramaters)
     redirect_to article_url(id: @article.id)
  end

  private
  def paramaters
    params.require(:article).permit(:description, :image)
  end
end
