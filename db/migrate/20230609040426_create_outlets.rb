class CreateOutlets < ActiveRecord::Migration[6.1]
  def change
    create_table :outlets do |t|
      t.string :name
      t.string :description
      t.integer :business_id

      t.timestamps
    end
  end
end
