class Product < ActiveRecord::Base
  validates :title, :price, :presence  => { :message => "This field is required."}
  validates :title, :uniqueness => { :message => "Title must be unique." }
  validates :title, length: {minimum: 4 ,:message => "Length should be of minimum 4 characters."}
  validates :price, numericality: {greater_than_or_equal_to: 0.01 , :message => "Value should be numeric and greater than 0.01"}
end
