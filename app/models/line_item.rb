class LineItem < ActiveRecord::Base
	belongs_to :order
	belongs_to :product
	belongs_to :cart
	attr_accesssible :cart_id, :product_id
	
	def total_price
		product.price * quantity
	end
end
