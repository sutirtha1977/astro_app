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
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Category created successfully."
      redirect_to(products_path)
    else
      render "new.js.erb"
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      flash[:notice] = "Category updated successfully."
      redirect_to(products_path)
    else
      render "edit.js.erb"
    end
  end

  def delete
    @product = Product.find(params[:id])
  end

  def destroy
    @products = Product.sorted
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Category '#{@product.name}' destroyed successfully."
    redirect_to(products_path)   
  end

private

  def product_params
    params.require(:product).permit(:name, :description, :category, :icon_path, :visible)
  end
end
