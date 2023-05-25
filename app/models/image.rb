require 'carrierwave/orm/activerecord'
require 'image_processor'

class Image < ApplicationRecord

  mount_uploader :storage, ImageUploaderUploader
  mount_uploader :storage_bw, ImageUploaderUploader

  belongs_to :account

  def upload_image src
    #Todo: move to remote location
    output_bw = "/home/serghei/projects/skin/the_skin_app/public/imagesbw/" + rand(10000).to_s + ".png"
    output_bw = ImageProcessor.convert_to_black_and_white(src,output_bw)

    File.open(src) do |f|
      self.storage = f
    end

    File.open(output_bw) do |f|
      self.storage_bw = f
    end

    self.save
  end

end
