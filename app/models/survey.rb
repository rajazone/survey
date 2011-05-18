class Survey < ActiveRecord::Base
  has_many :questions,
   :dependent => :destroy
    validates :surveyname, :length => { :maximum => 140 }, :presence => true

belongs_to :user,
validates :username, :length =>{:maximum =>30}, :presence=>true
end
