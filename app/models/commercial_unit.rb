class CommercialUnit < ApplicationRecord
	mount_uploader :photo, PhotoUploader
	belongs_to :manager

	scope :latest_commercials, -> { order created_at: :desc }
end
