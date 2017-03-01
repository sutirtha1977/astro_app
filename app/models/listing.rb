class Listing < ApplicationRecord
	belongs_to :product

	scope :visible, lambda { where(:visible => true) }
	scope :invisible, lambda { where(:visible => false) }
	scope :sorted, lambda { order("name ASC") }
	scope :newest_first, lambda { order("created_at DESC") }

  	validates :name, :presence => true,
					 :length => { :maximum => 255 },
					 :uniqueness => {:scope => :product_id}
	validates_presence_of :short_desc
	validates_presence_of :long_desc

	validates :orig_price, :presence => true,
						   :numericality => true,
						   :format => { :with => /\A\d{1,4}(\.\d{0,2})?\z/ }
		 
	validates :curr_price, :numericality => true,
						   :format => { :with => /\A\d{1,4}(\.\d{0,2})?\z/ }

end
