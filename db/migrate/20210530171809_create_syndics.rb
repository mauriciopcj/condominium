class CreateSyndics < ActiveRecord::Migration[5.2]
  def change
    create_table :syndics do |t|
      t.date :start
      t.date :end
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
