class User < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname, :mobile, :home_phone, :work_phone, :address, :suburb, :state, :postcode
end
