class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :benefits, :uses
  has_many :uses
end
