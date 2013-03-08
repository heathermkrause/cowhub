class AddLgidToFarmers < ActiveRecord::Migration
  def change
    add_column :farmers, :lgid, :integer
  end
end
