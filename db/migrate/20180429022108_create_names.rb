class CreateNames < ActiveRecord::Migration[5.2]
  def change
    create_table :names do |t|
      t.string :string
      t.string :seat_id_seq
      t.string :string
      t.string :address
      t.string :string
      t.string :price
      t.string :float
      t.string :email_address
      t.string :string

      t.timestamps
    end
  end
end
