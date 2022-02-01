class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # rescue_from ActiveRecord::RecordNotFound, :with => :not_found
    

  private
  def get_region
      if Rails.env.production?
        ip = request.remote_ip
      else
        ip = Net::HTTP.get(URI.parse('http://checkip.amazonaws.com/')).squish
      end
      p Geocoder.search(ip)
      region = Geocoder.search(ip).first.try(:region)
      return { ip: ip, region: region }
  end

  # def not_found
  #   render :file => "#{Rails.root}/public/404.html",  :status => 404
  # end 

end
