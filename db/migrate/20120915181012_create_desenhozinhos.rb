class CreateDesenhozinhos < ActiveRecord::Migration
  def change
    create_table :desenhozinhos do |t|
      t.string  :NomeDesenho
      t.timestatmps
   end
  end
  execute <<-SQL
      ON DELETE CASCADE
    SQL
end
