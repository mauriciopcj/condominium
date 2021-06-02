class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.string :service_type
      t.decimal :value
      t.references :tax, foreign_key: true

      t.timestamps
    end
  end
end
