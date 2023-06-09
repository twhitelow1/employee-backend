class CreateBusinesses < ActiveRecord::Migration[6.1]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :logo_url
      t.string :description
      t.string :phone

      t.timestamps
    end
  end
end
