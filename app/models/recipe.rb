class Recipe < ApplicationRecord
    belongs_to :item, optional: true
    
    def item_name
     self.item.name
    end    

    def item_benefits
      self.item.benefits
    end
end

