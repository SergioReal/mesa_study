class ApplicationController < ActionController::Base
  before_action :set_current_user
  # before_action :set_search
  #
  # def set_search
  #   #@search = Article.search(params[:q])
  #   @search = Datum.ransack(params[:q]) #ransackメソッド推奨
  #   @search_words = @search.result
  # end

  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end


end
