class ComplexBuilding < ApplicationRecord
	mount_uploader :photo, PhotoUploader
	belongs_to :manager

	scope :latest_complexes, -> { order created_at: :desc }
end
