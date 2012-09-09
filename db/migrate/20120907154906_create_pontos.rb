class CreatePontos < ActiveRecord::Migration
  def change
    create_table :pontos do |t|
      t.integer :NumDesenho
      t.integer :NumPontoNoDesenho
      t.integer :CoordX
      t.integer :CoordY

      t.timestamps
    end
  end
end
