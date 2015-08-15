class Photo < ActiveRecord::Base
	belongs_to :place

	validates :picture, :presence => true

	mount_uploader :picture, PhotoUploader
end






#class User < ActiveRecord::Base
#  mount_uploaders :pictures, PictureUploader
#
#  belongs_to :user
#  belongs_to :place
#end
