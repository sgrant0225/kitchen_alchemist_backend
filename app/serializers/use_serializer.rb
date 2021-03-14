class UseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :ingredients, :recipe
end
