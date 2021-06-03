class ArticlesController < ApplicationController
  def show
    # byebug # Can you to open a debugger console
    @article = Article.find(params[:id]) # the '@' makes it an instance variable, which is necessary to make the variable (in this case an article, available in the the 'show' view)
  end
end
