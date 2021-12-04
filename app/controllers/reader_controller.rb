class ReaderController < ApplicationController
  def home
    @articles = Article.all
  end

  # def post
  #   @article = Article.find(params[:id])
  # end
end
