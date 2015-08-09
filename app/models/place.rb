class Place < ActiveRecord::Base
	belongs_to :user
	validates :name, :description, :address, :presence => true
	validates :name, length: { minimum: 10 }
end
