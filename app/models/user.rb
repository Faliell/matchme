class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :male_matches, class_name: 'Match', foreign_key: 'male_id'
  has_many :female_matches, class_name: 'Match', foreign_key: 'female_id'
  has_many :match_maker_matches, class_name: 'Match', foreign_key: 'match_maker_id'

  has_many :male_chatrooms, class_name: 'Chatroom', foreign_key: 'male_id'
  has_many :female_chatrooms, class_name: 'Chatroom', foreign_key: 'female_id'

  has_one_attached :photo

  has_many :notifications, as: :recipient

  has_noticed_notifications

end
