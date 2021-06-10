class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :require_user, except: [:show, :index]
  before_action :require_same_user, only: [:edit, :update, :destroy]

  def show
    # @article = Article.find(params[:id]) # Removed for refactoring
    # the '@' makes it an instance variable, which is necessary to make the variable (in this case an article, available in the the 'show' view)
  end

  def index
    @articles = Article.paginate(page: params[:page], per_page: 5)
  end

  def new
    @article = Article.new
  end

  def edit
    # @article = Article.find(params[:id]) # Removed for refactoring
  end

  def create
    # render plain: params[:article] # Just renders the object, in this case an article, to the console
    @article = Article.new(article_params) # whitelist
    @article.user = current_user
    if @article.save
      flash[:notice] = "Article was created successfully." # For flash display. Common flash keys: notice, alert
      redirect_to @article # The code on this line is a shortcut for: redirect_to article_path(@article)
    else
      render 'new'
    end
  end

  def update
    # @article = Article.find(params[:id]) # Removed for refactoring
    if @article.update(article_params) # whitelist
      flash[:notice] = "Article was updated successfully."
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    # @article = Article.find(params[:id]) # Removed for refactoring
    @article.destroy
    redirect_to articles_path
  end

  private # Below this keyword are methods that are private and only usable to other methods within controller

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description) # called whitelisting
  end

  def require_same_user
    if current_user != @article.user
      flash[:alert] = "You can only edit or delete your own articles"
      redirect_to @article
    end
  end
end
