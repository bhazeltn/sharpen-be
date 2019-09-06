class CreateSharpenings < ActiveRecord::Migration[6.0]
  def change
    create_table :sharpenings do |t|
      t.integer :skater_id
      t.date :date

      t.timestamps
    end
  end
end
