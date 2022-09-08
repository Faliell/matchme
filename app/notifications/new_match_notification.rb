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

    if recipient.id == params[:post].male_id
      female = User.find(params[:post].female_id).first_name
      "You have a new match with #{female}"
    else
      male = User.find(params[:post].male_id).first_name
      "You have a new match with #{male}"
    end
  end

  def url
    post_path(params[:post])
  end
end
