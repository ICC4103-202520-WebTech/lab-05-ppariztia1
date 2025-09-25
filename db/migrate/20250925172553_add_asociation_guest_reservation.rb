class AddAsociationGuestReservation < ActiveRecord::Migration[8.0]
  def change
    change_table :reservations do |t|
      t.references :guest, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true
    end
  end
end
