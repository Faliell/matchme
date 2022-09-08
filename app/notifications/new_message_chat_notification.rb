class NewMessageChatNotification < Noticed::Base
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
    user = User.find(params[:post].user_id).first_name
    "You received a new message from #{user}"
  end

  def url
    post_path(params[:post])
  end
end
