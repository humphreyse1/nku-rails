module StudentHelper
  #get gravatar image
  def get_image(student)
    if student.image_url==nil
      student.image_url= "http://www.gravatar.com/avatar"
      if student.email != nil
        require 'digest/md5'
        hash= Digest::MD5.hexdigest(student.email).downcase
        student.image_url= "http://www.gravatar.com/avatar/#{hash}"
      end
    end
  end
end