class Match < ApplicationRecord
  belongs_to :match_maker, class_name: 'User'
  belongs_to :male, class_name: 'User'
  belongs_to :female, class_name: 'User'

  after_create :new_match_notification

  def new_match_notification
    NewMatchNotification.with(post: self).deliver(self.male)
    NewMatchNotification.with(post: self).deliver(self.female)
  end
end
