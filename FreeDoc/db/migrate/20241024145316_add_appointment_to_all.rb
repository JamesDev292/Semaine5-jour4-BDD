class AddAppointmentToAll < ActiveRecord::Migration[7.2]
  def change
    add_reference :appointments, :doctor, foreign_key: true
    add_reference :appointments, :patient, foreign_key: true
  end
end
