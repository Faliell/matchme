# To deliver this notification:

class NewMatchNotification < Noticed::Base
  # Add your delivery methods

  deliver_by :database, format: :to_database
  # deliver_by :email, mailer: "UserMailer"
  # deliver_by :slack
  # deliver_by :custom, class: "MyDeliveryMethod"

  def to_database
    {
      type: self.class.name,
      params: params,
    }
  end
  # Add required params
  #
  param :post

  # Define helper methods to make rendering easier.
  def message
    "New Match has been created"
  end

  def url
    post_path(params[:post])
  end
end
