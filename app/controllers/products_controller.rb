class ProductsController < ApplicationController
  def index
    @products = Product.all
    @categories = Category.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.create(product_params)
    if @product.save
      flash[:success] = "#{@product.name} added successfully!"
    else
      flash.now[:danger] = "Unable to save. Please try again."
      render 'new'
    end
  end

  def update
    @product = Product.create(product_params)
    if @product.save
      flash[:success] = "#{@product.name} updated successfully!"
    else
      flash.now[:danger] = "Unable to save. Please try again."
      render 'new'
    end
  end

  def destroy
    @product = Product.find()
    @product.delete
  end

  private

    def product_params
      params.require(:product).permit(:name, :expiration, :category_id)
    end
end
