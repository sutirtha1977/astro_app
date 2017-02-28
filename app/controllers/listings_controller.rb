class ListingsController < ApplicationController
  layout 'admin'

  before_action :confirm_logged_in
  before_action :find_product

  def index
    @listings = @section.listings.sorted
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new(:product_id => @product.id)
  end

  def create
    # Instantiate a new object using form parameters
    @listing = Listing.new(listing_params)
    @listing.section = @section
    # Save the object
    if @listing.save
      # If save succeeds, redirect to the index action
      flash[:notice] = "Listing created successfully."
      redirect_to(listings_path(:product_id => @product.id))
    else
      # If save fails, redisplay the form so user can fix problems
      render('new')
    end 
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    # Find a new object using form parameters
    @listing = Listing.find(params[:id])
    # Update the object
    if @listing.update_attributes(listing_params)
      # If save succeeds, redirect to the show action
      flash[:notice] = "Listing updated successfully."
      redirect_to(listings_path(@listing, :product_id => @product.id))
    else
      # If save fails, redisplay the form so user can fix problems
      render('edit')
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
              :short_desc, :long_desc, :visible, :orig_price, :curr_price)
  end

  def find_product
    @product = Product.find(params[:product_id])
  end
end
