class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :orgname
      t.string :email
      t.string :usertype

      t.timestamps
    end
  end
end
