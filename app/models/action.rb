# == Schema Information
#
# Table name: actions
#
#  id            :bigint(8)        not null, primary key
#  name          :string
#  taskable_type :string
#  taskable_id   :bigint(8)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Action < ApplicationRecord
  belongs_to :taskable, polymorphic: true
  has_many :event_actions
  has_many :events, through: :event_actions
end
