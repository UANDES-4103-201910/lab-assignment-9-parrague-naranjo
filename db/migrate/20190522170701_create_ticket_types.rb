class CreateTicketTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_types do |t|
      t.integer :price
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
