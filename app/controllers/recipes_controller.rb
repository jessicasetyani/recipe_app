class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, alert: 'Recipe not found'
  end
end
