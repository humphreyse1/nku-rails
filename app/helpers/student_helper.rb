module StudentHelper
  #get gravatar image
  def getImage
    if @student.image==nil
      @student.image= "http://www.gravatar.com/avatar"
      if @student.email != nil
        require 'digest/md5'
        hash= Digest::MD5.hexdigest(@student.email).downcase
        @student.image= "http://www.gravatar.com/avatar/#{hash}"
      end
    end
  end
end