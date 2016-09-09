class Admin::CategoriesController < ApplicationController
  def index
    categories = Category.all.order(created_at: :desc)
    @categories = Kaminari.paginate_array(categories).page(params[:page]).per "2"
  end
end
