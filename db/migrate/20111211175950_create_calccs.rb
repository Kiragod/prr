class CreateCalccs < ActiveRecord::Migration
  def change
    create_table :calccs do |t|
      t.string :one
      t.string :two

      t.timestamps
    end
  end
end
