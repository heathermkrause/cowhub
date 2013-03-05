class CreateGpfs < ActiveRecord::Migration
  def change
    create_table :gpfs do |t|
      t.integer :cbcount
      t.integer :lbcount
      t.integer :litres
      t.decimal :fat
      t.decimal :price
      t.decimal :litconsume
      t.decimal :litgive
      t.decimal :litsell
      t.integer :farmer_id
      t.string :whoconsa
      t.string :whoconsb
      t.string :wheresell

      t.timestamps
    end
  end
end
