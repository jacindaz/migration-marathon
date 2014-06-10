class Book < ActiveRecord::Base

  #add validations before something gets added to the db
  #these are validations that are server-side only

  validates :title, presence: true
  validates :author, presence: true
  validates :rating, numericality: {
      greater_than_or_equal_to: 0,
      less_than_or_equal_to: 100
    }, allow_nil: true

    has_many :checkouts
end
