class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.string :motiv
      t.datetime :choose
    end
  end
end
