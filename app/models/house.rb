class House < ApplicationRecord
	mount_uploader :photo, PhotoUploader
	belongs_to :manager

	scope :latest_houses, -> { order created_at: :desc }
end
