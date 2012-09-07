class CreatePontos < ActiveRecord::Migration
  def change
    create_table :pontos do |t|
      t.float :NumDesenho
      t.float :NumPontoNoDesenho
      t.float :CoordX
      t.float :CoordY

      t.timestamps
    end
  end
end
