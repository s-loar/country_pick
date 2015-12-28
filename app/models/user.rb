class User < ActiveRecord::Base

  attr_accessible :address1, :address2, :address3, :city, :state_code, :country_code, :postal_code
   
end
