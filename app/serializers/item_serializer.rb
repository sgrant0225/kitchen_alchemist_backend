class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :benefits
  
end

