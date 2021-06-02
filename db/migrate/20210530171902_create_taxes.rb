class CreateTaxes < ActiveRecord::Migration[5.2]
  def change
    create_table :taxes do |t|
      t.date :reference_date
      t.date :due_date
      t.date :payment_date
      t.references :apartment, foreign_key: true

      t.timestamps
    end
  end
end
