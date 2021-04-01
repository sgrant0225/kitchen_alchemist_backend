class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :ingredients, :instructions, :item_id, :item
  #belongs_to :item
 
end
