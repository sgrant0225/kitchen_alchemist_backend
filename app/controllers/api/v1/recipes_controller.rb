class Api::V1::RecipesController < ApplicationController
    def index
        recipes = Recipe.all 
        options = {
          include: [:item]
      }
        render json:  RecipeSerializer.new(recipes)
    end 

    def show
      recipe = Recipe.find(params[:id])
      render json: RecipeSerializer.new(recipe)
    end
    
    def create
      new_recipe = Recipe.new(recipe_params)
    
       if new_recipe.save
        render json: RecipeSerializer.new(new_recipe), status: :accepted
       else
        render json: {errors: new_recipe.errors.full_messages}, status: 422

       end
    end  

    def destroy
      recipe = Recipe.find(params[:id])

      if recipe.destroy
          render json: {id: recipe.id}
      end
    end  
     
      private
    
      def recipe_params
        params.require(:recipe).permit(:title, :ingredients, :instructions, :item_id)
      end

end
