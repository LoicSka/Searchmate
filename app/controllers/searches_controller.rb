class SearchesController < ApplicationController

  before_action :find_category

  def index  
   @searches = Search.all.includes(:category)
   @search = Search.new
  end

  def create
    @search = Search.new(search_params)
    @results = find_search @search.title, Category.find(@search.category_id).name
     respond_to do |format|
       format.html {redirect_to(action: 'show', id: @search.id, title: @search.title, category_name: @category.name) }
       format.js
    end
  end

 private

 def search_params
   params.require(:search).permit(:title, :category_id, :result,:category_name)
 end
 def find_category
    if (params[:category_id]).blank?
     @category = Category.find(2)
    else
     @category = Category.find(params[:category_id])
    end
 end
end

