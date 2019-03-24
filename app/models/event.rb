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
  validates :object, presence: true
  validates :state, presence: true
end
