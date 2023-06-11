class CreateShifts < ActiveRecord::Migration[6.1]
  def change
    create_table :shifts do |t|
      t.string :day
      t.date :date
      t.datetime :time_in
      t.datetime :time_out
      t.integer :outlet_id
      t.integer :position_id
      t.integer :schedule_id
      t.integer :manager_id
      t.integer :employee_id
      t.string :notes
      t.string :short_note

      t.timestamps
    end
  end
end
