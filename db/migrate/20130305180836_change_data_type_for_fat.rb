class ChangeDataTypeForFat < ActiveRecord::Migration
  def up
      change_table :gpfs do |t|
            t.change :fat, :decimal
  end

  def down
  end
end
