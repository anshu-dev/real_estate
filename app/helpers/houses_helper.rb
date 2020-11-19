module HousesHelper
	def house_thumbnail(house)
		img = house.photo.present? ? house.photo.thumb.url : "placeholder.png"
		image_tag img, class: "house-thumb"
	end
end
