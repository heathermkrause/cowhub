class CreateVisuals < ActiveRecord::Migration
  def change
    create_table :visuals do |t|
      t.string :vizname
      t.string :topic
      t.integer :user_id

      t.timestamps
    end
  end
end
