class CreatePontinhos < ActiveRecord::Migration
  def change
    create_table :pontinhos do |t|
      t.integer :NumDesenho_id
      t.integer :NumPonto
      t.integer :CX
      t.integer :CY

      t.timestamps
    end
  end
  execute <<-SQL
      ALTER TABLE pontinhos
        ADD CONSTRAINT fk_pontinhos_desenhos
        FOREIGN KEY (NumDesenho)
        REFERENCES desenhos(id)
    SQL
    
end
