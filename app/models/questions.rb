class Questions < ActiveRecord::Base
belongs_to :surveydata
 validates :questiontxt, :length => { :maximum => 250 }, :presence => true
 validates :option1, :length => { :maximum => 250 }, :presence => true
 validates :option2, :length => { :maximum => 250 }, :presence => true
 validates :option3, :length => { :maximum => 250 },
 validates :option4, :length => { :maximum => 250 },
 validates :option5, :length => { :maximum => 250 },

end
