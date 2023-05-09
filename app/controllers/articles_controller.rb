class ArticlesController < ApplicationController
   def index
      @articles = Article.all
   end

   def show(id)
      @article = Article.find(params[:id])
   end
end
