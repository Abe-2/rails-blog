module Users
  class ArticlesController < UsersController
    before_action :set_article, only: [:edit, :update, :destroy]

    # def index
    #   @articles = current_user.articles
    # end

    def show
      @article = Article.find(params[:id])
    end

    def new
      @article = current_user.articles.build
    end

    def create
      @article = current_user.articles.build(article_params)

      if @article.save
        redirect_to @article
      else
        render :new
      end
    end

    def edit
      # @article = Article.find(params[:id])
    end

    def update
      # @article = Article.find(params[:id])

      if @article.update(article_params)
        redirect_to @article
      else
        render :edit
      end
    end

    def destroy
      # @article = Article.find(params[:id])
      @article.destroy

      redirect_to root_path
    end

    private def set_article
      @article = current_user.articles.find(params[:id])
    end

    private def article_params
      params.require(:article).permit(:header_image, :title, :headline, :body, :status)
    end
  end
end
