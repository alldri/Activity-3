class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :ticket_name
      t.string :seat_seq_id
      t.string :address
      t.float :price
      t.string :email_address

      t.timestamps
    end
  end
end
