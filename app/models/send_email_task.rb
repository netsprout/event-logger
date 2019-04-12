# == Schema Information
#
# Table name: send_email_tasks
#
#  id         :bigint(8)        not null, primary key
#  mailer     :string
#  emails     :json
#  data       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SendEmailTask < ApplicationRecord
  has_many :actions, :as => :taskable
end
