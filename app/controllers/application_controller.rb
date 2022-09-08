class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :set_variables

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :age, :gender, :interest, :description, :geo, :account_type, :photo])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :age, :gender, :interest, :description, :geo, :account_type, :photo])
  end

  def set_variables
    if user_signed_in?
      @notifications = current_user.notifications.unread
    else
      @notifications = []
    end
  end
end
