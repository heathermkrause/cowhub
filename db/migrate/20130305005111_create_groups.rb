class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :lgid
      t.integer :phase
      t.string :district
      t.string :upazilla
      t.integer :totalpart
      t.integer :perfemale

      t.timestamps
    end
  end
end
