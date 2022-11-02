class Api::ProductsController < ApplicationController
  before_action :set_product, only: %i[update destroy]

  def index
    @products = Product.all

    render json: { products: @products }
  end

  def calculator
    @product = ProductCalculatorService.call(product_calculator_params)
    if @product.present?
      render json: { product: @product }
    else
      render json: { error: 'No product matches the set criteria' }, status: :not_found
    end
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      render json: { product: @product }, status: :created
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def update
    if @product.update(product_params)
      render json: { product: @product }, status: :ok
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @product.destroy
      render status: :no_content
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :type, :length, :height, :width, :weight)
  end

  def set_product
    @product = Product.find(params[:id])
  end

  def product_calculator_params
    params.permit(:length, :height, :width, :weight)
  end
end
