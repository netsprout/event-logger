class CreateEventActions < ActiveRecord::Migration[5.2]
  def change
    create_table :event_actions, id: false do |t|
      t.references :event, foreign_key: true
      t.references :action, foreign_key: true

      t.timestamps
    end
  end
end
