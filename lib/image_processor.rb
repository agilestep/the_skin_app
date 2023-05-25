require "mini_magick"


class ImageProcessor


  OUTPUT_SIZE  = "300x300"

  def self.convert_to_black_and_white image_uri,output_uri
    image = MiniMagick::Image.open(image_uri)
    image.resize OUTPUT_SIZE
    image.format "png"
    image.colorspace  "gray"
    image.write output_uri
    output_uri
  end


end



ImageProcessor.convert_to_black_and_white '/home/serghei/projects/skin/the_skin_app/public/download.jpg',
                                          '/home/serghei/projects/skin/the_skin_app/public/result.png'