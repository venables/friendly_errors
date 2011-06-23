module FriendlyErrors
  
  # Mix class methods into ActionController.
  def self.included(base) # :nodoc:
    base.extend ClassMethods
  end
  
  # Class method to mix into action controller.
  module ClassMethods # :nodoc:
    def use_friendly_errors(filter_options = {})
      rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found
      rescue_from ActionController::RedirectBackError, :with => :redirect_back_error
    end
  end
  
private

  # called when an ActiveRecord::RecordNotFound exception is caught
  def record_not_found(ex)
    render :file => File.join(Rails.root, 'public', '404.html'), :status => 404, :layout => nil
  end
  
  # called when an ActionController::RedirectBackError exception is caught
  def redirect_back_error
    redirect_to root_url
  end

end