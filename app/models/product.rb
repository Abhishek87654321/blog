class Product < ApplicationRecord
  belongs_to :category , inverse_of: :products
end
