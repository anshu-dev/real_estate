module ComplexBuildingsHelper
	def complex_building_thumbnail(complex_building)
		img = complex_building.photo.present? ? complex_building.photo.thumb.url : "placeholder.png"
		image_tag img, class: "complex_building-thumb"
	end
end
