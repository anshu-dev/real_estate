module CommercialUnitsHelper
	def commercial_thumbnail(commercial_unit)
		img = commercial_unit.photo.present? ? commercial_unit.photo.thumb.url : "placeholder.png"
		image_tag img, class: "commercial_unit-thumb"
	end
end
