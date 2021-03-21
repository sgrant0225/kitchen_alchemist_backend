class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :item_name, :benefits, :title, :ingredients, :instructions, :item
  #belongs_to :item
 
end
