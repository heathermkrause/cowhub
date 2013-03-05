class ChangeDataTypeForLitconsume < ActiveRecord::Migration
  def up
    change_table :gpfs do |t|
      t.change :litconsume, :decimal
  end

  def down
  end
end
