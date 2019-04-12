# == Schema Information
#
# Table name: event_actions
#
#  event_id   :bigint(8)
#  action_id  :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class EventAction < ApplicationRecord
  belongs_to :event
  belongs_to :action
end
