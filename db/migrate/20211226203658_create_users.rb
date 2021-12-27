class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.string :userName
      t.string :email
      t.string :phone
      t.string :location

      t.timestamps
    end
  end
end
