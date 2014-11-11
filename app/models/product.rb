class Product < ActiveRecord::Base
	# When you create a product, both the description and name have to be present
	validates :description, :name, presence: true
	# When you create a product, the price_in_cents must be an integer
	validates :price_in_cents, numericality: {only_integer: true}

	def formatted_price
		price_in_dollars = price_in_cents.to_f / 100
		sprintf("%.2f", price_in_dollars)
	end
end
