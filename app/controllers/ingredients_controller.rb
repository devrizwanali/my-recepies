class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show,:update, :edit]

  def new
  end

  def create 
  end

  def show
    
  end

  def edit
  end

  def update
  end
 
  def index
    @ingredients = Ingredient.paginate(page: params[:page], per_page: 5)
  end

  def set_ingredient
    @ingredient = Ingredient.find(params[:id]) 
  end
end