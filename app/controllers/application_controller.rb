class ApplicationController < ActionController::API
  rescue_from Mongoid::Errors::DocumentNotFound, :with => :handle_resource_not_found

  def handle_resource_not_found
    render json: {error: 'Resource not found'}, status: 404
  end
end
