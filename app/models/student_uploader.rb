class StudentUploader
  require 'csv'
  
  def initialize(file)
    @file= file
  end
  
  def import
    rows= []
    max= 0
    CSV.foreach(@file) do |record| #, :col_sep => ', ') do |record|
      rows << record
      max += 1
    end
    
    #assign info from the CSV
    for i in 0..max
      s= Student.new
      s[:email]= rows[i][0]
      s[:nickname]= rows[i][1]
      s[:name]= rows[i][2]
      s[:image_url]= rows[i][3]
      s[:password]= rows[i][4]
    end
  end
end