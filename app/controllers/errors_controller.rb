class ErrorsController < ApplicationController
  
  skip_before_action :verify_authenticity_token
  
  def not_found
    render(:status => 404)
  end

end