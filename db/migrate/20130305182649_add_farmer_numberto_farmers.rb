class AddFarmerNumbertoFarmers < ActiveRecord::Migration
  def up
    add_column :farmers, :farmer_number, :integer
  end

  def down
  end
end
