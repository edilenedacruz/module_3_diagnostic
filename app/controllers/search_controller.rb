class SearchController < ApplicationController
  def index
    @search = Search.new
  end
end
