class ArticlesController < ApplicationController

  def show
    @article = Article.find(params[:id]) # the '@' makes it an instance variable, which is necessary to make the variable (in this case an article, available in the the 'show' view)
  end

  def index
    @articles = Article.all
  end

  def new

  end

  def create
    render plain: params[:article]
  end

end
