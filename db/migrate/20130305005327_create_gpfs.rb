class CreateGpfs < ActiveRecord::Migration
  def change
    create_table :gpfs do |t|
      t.integer :cbcount
      t.integer :lbcount
      t.integer :litres
      t.float :fat
      t.float :price
      t.float :litconsume
      t.float :litgive
      t.float :litsell
      t.integer :farmer_id
      t.string :whoconsa
      t.string :whoconsb
      t.string :wheresell

      t.timestamps
    end
  end
end
