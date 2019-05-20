class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string :status
      t.references :user, foreign_key: true
      t.references :dog, foreign_key: true
      t.string :request_message
      t.date :date
      t.time :time_start
      t.time :time_end

      t.timestamps
    end
  end
end
