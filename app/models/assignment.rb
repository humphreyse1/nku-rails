class Assignment < ActiveRecord::Base
  belongs_to :student
  
  def percentage
    return ((score.to_f / total) * 100).round
  end
  
  def self.average_percentage
    sum_score= sum('score').round
    sum_total= sum('total').round
    return ((sum_score.to_f / sum_total) * 100)
  end
end