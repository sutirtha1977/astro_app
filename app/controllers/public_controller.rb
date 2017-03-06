class PublicController < ApplicationController
  def home
  	@products = Product.category_group('PRODUCT').visible
  	@services = Product.category_group('SERVICE').visible
  	@all_categories = Product.visible
  end
end
