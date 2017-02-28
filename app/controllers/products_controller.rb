class ProductsController < ApplicationController
  layout 'admin'

  before_action :confirm_logged_in

  def index
    @products = Product.sorted
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    # Instantiate a new object using form parameters
    @product = Product.new(product_params)
    # Save the object
    if @product.save
      # If save succeeds, redirect to the index action
      flash[:notice] = "Product created successfully."
      redirect_to(products_path)
    else
      # If save fails, redisplay the form so user can fix problems
      render('new')
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    # Find a new object using form parameters
    @product = Product.find(params[:id])
    # Update the object
    if @product.update_attributes(product_params)
      # If save succeeds, redirect to the show action
      flash[:notice] = "Product updated successfully."
      redirect_to(products_path)
    else
      # If save fails, redisplay the form so user can fix problems
      render('edit')
    end
  end

  def delete
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Product '#{@product.name}' destroyed successfully."
    redirect_to(products_path)
  end

private

  def product_params
    params.require(:product).permit(:name, :description, :category, :visible)
  end

end
