class ChangeRequestMessageTypeInAppointments < ActiveRecord::Migration[5.2]
  def change
    change_column :appointments, :request_message, :text
  end
end
