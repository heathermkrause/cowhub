class ChangeDataTypeForLitgive < ActiveRecord::Migration
  def up
    change_table :gpfs do |t|
      t.change :litgive, :decimal
  end

  def down
  end
end
