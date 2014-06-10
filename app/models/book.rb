class Book < ActiveRecord::Base

  #add validations before something gets added to the db
  validates :title, presence :true
end
