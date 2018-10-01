class ApplicationController < ActionController::API
  def render_error(obj)
    #obj.errors --> info about our errors  
    #ing.errors.full_messages --> array of all of errors
    render json: { errors: obj.errors.full_messages }, status: 422
  end
end
