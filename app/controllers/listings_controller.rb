class ListingsController < ApplicationController
  layout 'admin'

  before_action :confirm_logged_in
  before_action :find_product

  def index
    @listings = @product.listings.sorted
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new(:product_id => @product.id)
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.product = @product 
    if @listing.save
      flash[:notice] = "Listing created successfully."
      redirect_to(listings_path(:product_id => @product.id))
    else
      render "new.js.erb"
    end 
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])
    if @listing.update_attributes(listing_params)
      flash[:notice] = "Listing '#{@listing.name}' updated successfully."
      redirect_to(listings_path(:product_id => @product.id))
    else
      render "edit.js.erb"
    end
  end

  def delete
    @listing = Listing.find(params[:id])
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    flash[:notice] = "Listing '#{@listing.name}' destroyed successfully."
    redirect_to(listings_path(:product_id => @product.id))   
  end

private

  def listing_params
    params.require(:listing).permit(:product_id, :name, 
              :short_desc, :long_desc, :visible, :orig_price, :curr_price, :image)
  end

  def find_product
    @product = Product.find(params[:product_id])
  end
end
