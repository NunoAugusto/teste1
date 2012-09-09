class CreateDesenhos < ActiveRecord::Migration
  def change
    create_table :desenhos do |t|
      t.integer :NumDesenho

      t.timestamps
    end
  end
end
