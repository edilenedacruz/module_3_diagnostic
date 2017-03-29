class SearchController < ApplicationController
  def index
    @search = Search.new(params[:q])
  end
end
