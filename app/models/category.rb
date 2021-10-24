# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :products, inverse_of: :category
  enum name: %i[tv mobile wm]
end
