class ChangeDataTypeForLitsell < ActiveRecord::Migration
  def up
  end
    change_table :gpfs do |t|
      t.change :litsell, :decimal

  def down
  end
end
