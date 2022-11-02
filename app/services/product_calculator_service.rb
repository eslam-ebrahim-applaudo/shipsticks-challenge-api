class ProductCalculatorService < ApplicationService
  def initialize(params)
    @params = params
  end

  def call
    required_params = [:length, :width, :height, :weight]
    return nil unless required_params.all? { |key| @params.has_key? key }
    get_matching_product
  end

  private
  
  def get_matching_product
    Product.and(:length.gte => @params[:length])
      .and(:width.gte => @params[:width])
      .and(:height.gte => @params[:height])
      .and(:weight.gte => @params[:weight])
      .order_by(length: :asc, width: :asc, height: :asc, weight: :asc).first
  end
  
end