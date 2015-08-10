class Place < ActiveRecord::Base
	belongs_to :user
	has_many :comments

    mount_uploader :photo, PhotoUploader
	

	geocoded_by :address
  	after_validation :geocode

	validates :name, :description, :address, :presence => true
	validates :name, length: { minimum: 5 }

end