# == Schema Information
#
# Table name: events
#
#  id         :bigint(8)        not null, primary key
#  object     :string
#  state      :string
#  data       :json
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Event < ApplicationRecord
  has_many :event_actions
  has_many :actions, through: :event_actions
  validates :object, presence: true
  validates :state, presence: true
end
