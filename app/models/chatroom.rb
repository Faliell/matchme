class Chatroom < ApplicationRecord
  belongs_to :male, class_name: 'User'
  belongs_to :female, class_name: 'User'
  has_many :messages

end
