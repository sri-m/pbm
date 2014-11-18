class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #self.inheritance_column = nil
  protect_from_forgery with: :exception

protected
def after_sign_in_path_for(resource)
	flash[:notice] = "Account succesfully updated"
	if current_member
		'/available_stocks/'
	else
		'/admin/available_stocks'
	end
end


before_filter :configure_permitted_parameters, if: :devise_controller?

    protected
        def configure_permitted_parameters
            devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:user_name, :phone, :dob, :gender, :email, :password) }
            devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:user_name, :phone, :dob, :gender, :email, :password, :current_password) }
        end
end
