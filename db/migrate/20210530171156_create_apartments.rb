class CreateApartments < ActiveRecord::Migration[5.2]
  def change
    create_table :apartments do |t|
      t.integer :floor
      t.integer :number

      t.timestamps
    end
  end
end
