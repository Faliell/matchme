class NotificationsController < ApplicationController
  def index; end


  def mark_all_read
    @notification = current_user.notifications.mark_as_read!
    redirect_to request.referrer
  end

end
