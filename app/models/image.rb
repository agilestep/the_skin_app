require 'carrierwave/orm/activerecord'

class Image < ApplicationRecord

  mount_uploader :storage, ImageUploaderUploader

  belongs_to :account

end
