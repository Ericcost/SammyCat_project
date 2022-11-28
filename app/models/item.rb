class Item < ApplicationRecord

validates :title,
  presence: true,
	length: { in: 5..25 }


validates :description,
	presence: true,
	length: { in: 10..280 }

validates :price,
	presence: true,
	numericality: { only_integer: true }

validates :image_url,
	presence: true

end
