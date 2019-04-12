class CreateSendEmailTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :send_email_tasks do |t|
      t.string :mailer
      t.json :emails
      t.string :data

      t.timestamps
    end
  end
end
