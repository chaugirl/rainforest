class Product < ActiveRecord::Base
	# When you create a product, both the description and name have to be present
	validates :description, :name, presence: true
	# When you create a product, the price_in_cents must be an integer
	validates :price_in_cents, numericality: {only_integer: true}
end
