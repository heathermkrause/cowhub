class ChangeDataTypeForPrice < ActiveRecord::Migration
  def up
    change_table :gpfs do |t|
      t.change :price, :decimal
  end

  def down
  end
end
