class ArticlesController < ApplicationController
  # GET /articles
  # GET /articles.xml
  def index
    @articles = Article.all.paginate(:per_page => 10, :page => params[:page])
    if request.xhr?
      sleep(3) # make request a little bit slower to see loader :-)
      render :partial => @articles
    end
  end
end
