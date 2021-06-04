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
    # render plain: params[:article] # Just renders the object, in this case an article, to the console
    @article = Article.new(params.require(:article).permit(:title, :description))
    @article.save
    redirect_to @article # The code on this line is a shortcut for: redirect_to article_path(@article)
  end

end
