class Product < ApplicationRecord
	has_many :listings, :dependent => :destroy

	scope :visible, lambda { where(:visible => true) }
  	scope :invisible, lambda { where(:visible => false) }
  	scope :sorted, lambda { order("name ASC") }
  	scope :newest_first, lambda { order("created_at DESC") }
  	scope :search, lambda {|query| where(["name LIKE ?", "%#{query}%"]) }

  	validates :name, :presence => true,
					 :length => { :maximum => 255 }
	validates_presence_of :description
	validates_presence_of :category
end
