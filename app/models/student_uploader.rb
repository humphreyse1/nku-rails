class StudentUploader
  def initialize(file)
    @file= file
  end
  
  def import
    @file.read
  end
end