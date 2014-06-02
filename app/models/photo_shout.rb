class PhotoShout < ActiveRecord::Base
  has_attached_file :image, styles: {
  	shout: "250x250"
  }

  def index
    image_file_name	
  end

end
 