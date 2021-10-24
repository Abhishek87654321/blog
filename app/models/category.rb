class Category < ApplicationRecord
	has_many :products , inverse_of: :category
	enum name: [:tv, :mobile, :wm]
end
