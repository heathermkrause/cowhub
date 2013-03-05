class CreateFarmers < ActiveRecord::Migration
  def change
    create_table :farmers do |t|
      t.string :name
      t.integer :group_id
      t.string :sex

      t.timestamps
    end
  end
end
