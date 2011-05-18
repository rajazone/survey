class User < ActiveRecord::Base
has_many :surveydatas,
   :dependent => :destroy
    validates :username, :length => { :maximum => 30 }, :presence => true
end
