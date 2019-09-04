class CreateSkaters < ActiveRecord::Migration[6.0]
  def change
    create_table :skaters do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :hollow
      t.string :interval

      t.timestamps
    end
  end
end
