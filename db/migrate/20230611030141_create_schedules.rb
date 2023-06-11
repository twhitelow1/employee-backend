class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.date :start_date
      t.date :end_date
      t.integer :manager_id
      t.integer :business_id

      t.timestamps
    end
  end
end
