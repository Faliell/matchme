class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user

  after_create :new_message_notification

  def new_message_notification
    NewMessageChatNotification.with(post: self).deliver(receiver)
  end

  def receiver
    if user == chatroom.male
      chatroom.female
    else
      chatroom.male
    end
  end

  def sender?(a_user)
    user.id == a_user.id
  end
end
