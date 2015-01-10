class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  
  end

  def show
  end

  def new
    @category = Category.new
  end

  def edit
  end

  def create
    @category = Category.new(category_params)
    respond_to do |format|
      if @category.save
       format.html { redirect_to @category}
       format.js 
      else
      format.html { render :new}
   
     end
    end
  end
  def destroy
    @category = Category.destroy(params[:id])
     respond_to do |format|
       format.html { redirect_to categories_url}
       format.js 
     end   
  end
 private
 def category_params
   params.require(:category).permit(:name)
 end
end
