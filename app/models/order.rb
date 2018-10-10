# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  name       :string
#  address    :text
#  email      :string
#  pay_type   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ApplicationRecord
	enum pay_type: {
		"Check" => 0,
    "Credit card" => 1,
    "Purchase" => 2
	}

	validates :name, :address, presence: true
	validates :pay_type, inclusion: pay_types.keys

	has_many :line_items, dependent: :destroy

	def add_line_items_from_cart(cart)
		cart.line_items.each do |line_item|
      line_item.cart_id = nil
      line_items << line_item
		end
	end
end
