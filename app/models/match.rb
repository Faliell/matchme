class Match < ApplicationRecord
  belongs_to :match_maker, class_name: 'User'
  belongs_to :male, class_name: 'User'
  belongs_to :female, class_name: 'User'
end
