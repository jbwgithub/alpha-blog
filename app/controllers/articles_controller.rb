class ArticlesController < ApplicationController

  def show
    @article = Article.find(params[:id]) # the '@' makes it an instance variable, which is necessary to make the variable (in this case an article, available in the the 'show' view)
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    # render plain: params[:article] # Just renders the object, in this case an article, to the console
    @article = Article.new(params.require(:article).permit(:title, :description)) # called whitelisting
    if @article.save
      flash[:notice] = "Article was created successfully." # For flash display. Common flash keys: notice, alert
      redirect_to @article # The code on this line is a shortcut for: redirect_to article_path(@article)
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(params.require(:article).permit(:title, :description)) # whitelist
      flash[:notice] = "Article was updated successfully."
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

end
